/* API 데이터 가져오는 걸 테스트하는 자바 코드
 * 파싱할 URL 부분만 가져올 걸로 바꾸면 됨 
 */
package sample;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

import javax.naming.ConfigurationException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;


public class Test {

    private static String getXML(String tagName, Element e) {
        NodeList nl = e.getElementsByTagName(tagName).item(0).getChildNodes();
        Node nv = (Node)nl.item(0);
        if(nv == null) {
            return null;
        }
        return nv.getNodeValue();
    }

    public static void main(String[] args) {
        // 파싱할 URL
        String URL = "http://open.ev.or.kr:8080/openapi/services/EvCharger/getChargerInfo?" +
                "serviceKey=mLf9QlloMs3F9zP6Nm1yuWBLzdnzAJLnteU%2BBkCYOvNEs7oZ9Gm5G8lwyn6e%2BMKx4sc%2B%2F4n4rtfK7GQ%2Bniiicg%3D%3D" +
                "&pageNo=1" +
                "&pageSize=10000&";

        // 페이지에 접근해 줄 Document 객체 생성하기
        try {
            DocumentBuilderFactory df = DocumentBuilderFactory.newInstance();
            DocumentBuilder db = df.newDocumentBuilder();
            Document d = db.parse(URL);
            d.getDocumentElement().normalize();
            String rootName = d.getDocumentElement().getNodeName();
            System.out.println("가장 상위에 있는 태그: " + rootName);

            // 파싱할 정보가 있는 태그에 접근하기
            NodeList nl = d.getElementsByTagName("item");
            System.out.println("파싱할 리스트의 수: " + nl.getLength());

            // NodeList에 담긴 데이터 출력하기
            for(int i = 0; i < nl.getLength(); i++) {
                Node node = nl.item(i);
                if(node.getNodeType() == Node.ELEMENT_NODE) {
                    Element e = (Element) node;

                    int stat = Integer.parseInt(getXML("stat", e));

                    String addr = getXML("addr", e);
                    String busiNm = getXML("busiNm", e);
                    String powerType = getXML("powerType", e);
                    boolean isSeoul = addr.substring(0, 2).equals("서울");
                    boolean isEnvironment = busiNm.substring(0, 2).equals("환경");
                    if(isEnvironment && isSeoul) {
                        System.out.println("==============================");
                        System.out.println((i + 1) + " 번");
                        System.out.println("이름: " + getXML("statNm", e));
                        System.out.println("주소: " + addr);
                        System.out.println("운영사: " + busiNm);
                        System.out.println("충전기 타입: " + powerType);
                        System.out.print("현재 상태: ");
                        switch (stat) {
                            case 1:
                                System.out.println("통신 이상");
                                break;
                            case 2:
                                System.out.println("충전 대기중");
                                break;
                            case 3:
                                System.out.println("충전중");
                                break;
                            case 4:
                                System.out.println("운영 중지");
                                break;
                            case 5:
                                System.out.println("점검중");
                                break;
                            case 9:
                                System.out.println("미확인");
                                break;
                        }
                    }
                }
            }
        } catch(IOException e) {
            System.out.println("입출력 에러 발생");
            System.out.println(e.getMessage());
        } catch(ParserConfigurationException e) {
            System.out.println("아니 이건 또 뭔 에러여");
            System.out.println(e.getMessage());
        } catch(SAXException e) {
            System.out.println("아니 이건 또 뭔 에러여2");
            System.out.println(e.getMessage());
        }
    }
}
