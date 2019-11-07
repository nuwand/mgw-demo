
public function main() {
    
    string[] TrainsAPI__1_0_0_service = [ "get_6ef59740_6550_4d0a_8661_01ccd39b4205"
                                , "get_be815e08_2dc0_4f7d_85d7_975ba8cb0f72"
                                , "get_e9ebb5c0_a2a9_4d45_9ad4_92173b311f88"
                                ];
    gateway:populateAnnotationMaps("TrainsAPI__1_0_0", TrainsAPI__1_0_0, TrainsAPI__1_0_0_service);
    

    initThrottlePolicies();

    map<string> receivedRevokedTokenMap = gateway:getRevokedTokenMap();
    boolean jmsListenerStarted = gateway:initiateTokenRevocationJmsListener();

    boolean useDefault = gateway:getConfigBooleanValue(gateway:PERSISTENT_MESSAGE_INSTANCE_ID,
    gateway:PERSISTENT_USE_DEFAULT, false);

    if (useDefault){
        future<()> initETCDRetriveal = start gateway:etcdRevokedTokenRetrieverTask();
    } else {
        initiatePersistentRevokedTokenRetrieval(receivedRevokedTokenMap);
    }
    startupExtension();
}
