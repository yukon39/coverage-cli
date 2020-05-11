
package internal.java;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Callable;

import com._1c.g5.v8.dt.debug.core.runtime.client.IRuntimeDebugClient;
import com._1c.g5.v8.dt.debug.core.runtime.client.RuntimeDebugClientException;
import com._1c.g5.v8.dt.debug.model.base.data.AttachDebugUIResult;
import com._1c.g5.v8.dt.debug.model.base.data.DebugTargetType;
import com._1c.g5.v8.dt.internal.debug.core.runtime.client.RuntimeDebugHttpClient;
import com._1c.g5.v8.dt.internal.debug.core.runtime.client.RuntimeDebugModelXmlSerializer;

public class test implements Callable<Integer> {

    private static EDTDebugClient debugClient;

    public static void main(String[] args) {

        debugClient = new EDTDebugClient();
        try {
            debugClient.connect();
            debugClient.disconnect();
        } catch (RuntimeDebugClientException e) {
            e.printStackTrace();
        }        

        System.out.println("Hello World");
    }

    public Integer call() throws Exception {
        return 0;
    }
}

final class EDTDebugClient {

    private final IRuntimeDebugClient client;

    public EDTDebugClient() {
        RuntimeDebugModelXmlSerializer serializer = new RuntimeDebugModelXmlSerializer();
        client = new RuntimeDebugHttpClient(serializer);
    }

    public AttachDebugUIResult connect() throws RuntimeDebugClientException {
        String debugServerUrl = "http://localhost:1550";
        String infobaseAlias = "DefAlias";
        String password = "";
           
        UUID debugServerUuid = UUID.randomUUID();

        List<DebugTargetType> debugTargetTypes = new LinkedList<DebugTargetType>();
        debugTargetTypes.addAll(DebugTargetType.VALUES);
        debugTargetTypes.remove(DebugTargetType.UNKNOWN);
        List<String> debugAreaNames = new ArrayList<String>();

        client.configure(debugServerUrl, debugServerUuid, infobaseAlias);
        
        AttachDebugUIResult result = client.connect(password);
        System.out.println(result.toString());
        client.initSettings(false);
        client.setAutoconnectDebugTargets(debugAreaNames, debugTargetTypes);

        // debugTargets = client.getRuntimeDebugTargets(null);
        // connectAllTargets(debugTargets);

        return result;
    }

    public void disconnect() throws RuntimeDebugClientException {
        client.toggleProfiling(null);
        client.disconnect();
    }
   
}