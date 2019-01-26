package ca.pcraig3.holidays;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;

public class Links {

    private static String majorVersion = "v1";
    private static String[] keys = {"holidays", "provinces", "root"};

    Links () {}

    public static HashMap<String, Object> getLinkMap(String key, String link) {
        String _link = getRootLink(link);

        HashMap<String, Object> linkMap = new HashMap<>();
        for(String _key: keys) {
            linkMap.putAll(getLinks(_key, _link));
        }

        Object selfLink = linkMap.remove(key);
        if(selfLink != null) {
            linkMap.put("self", selfLink);
        }
        else {
            linkMap.put("self", getRawLink(link));
        }

        return linkMap;
    }

    private static HashMap<String, Object> getLinks(String key, String link) {
        HashMap<String, String> hrefMap = new HashMap<>();
        hrefMap.put("href", String.format("%s%s", link, key.equals("self") || key.equals("root") ? "" : majorVersion + "/" + key));

        HashMap<String, Object> responseMap = new HashMap<>();
        responseMap.put(key, hrefMap);
        return responseMap;
    }

    private static HashMap<String, String> getRawLink(String link) {
        HashMap<String, String> hrefMap = new HashMap<>();
        hrefMap.put("href", link);

        return hrefMap;
    }

    private static String getRootLink(String link) {
        try {
            URL url = new URL(link);
            return String.format("%s://%s%s/", url.getProtocol(), url.getHost(), (url.getPort() == -1 ? "" : ":" + url.getPort() ));
        }
        catch(MalformedURLException e) {
            return "http://localhost";
        }
    }
}
