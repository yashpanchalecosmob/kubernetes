piVersion: apps/v1
kind: Deployment
metadata:
  name: freeswitch-deployment
spec:
  replicas: 1
  selector:
    matchLabels:
      app: freeswitch
  template:
    metadata:
      labels:
        app: freeswitch
    spec:
      hostNetwork: true
      containers:
      - name: freeswitchcluster
        image: karangauswami/freeswitch:1.10.5
        #        volumeMounts:
        #        - name: freeswitch-config
        #          mountPath: /usr/local/freeswitch/conf/autoload_configs/event_socket.conf.xml
        #          subPath: event_socket.conf.xml
        #        - name: freeswitch-config
        #          mountPath: /usr/local/freeswitch/conf/autoload_configs/acl.conf.xml
        #          subPath: acl.conf.xml
        #        - name: freeswitch-config
        #          mountPath: /usr/local/freeswitch/conf/autoload_configs/modules.conf.xml
        #          subPath: modules.conf.xml
        #        - name: freeswitch-config
        #          mountPath: /usr/local/freeswitch/conf/autoload_configs/json_cdr.conf.xml
        #          subPath: json_cdr.conf.xml
        #        - name: freeswitch-config
        #          mountPath: /usr/local/freeswitch/conf/vars.xml
        #          subPath: vars.xml
        #        - name: freeswitch-config
        #          mountPath: /usr/local/freeswitch/conf/autoload_configs/xml_curl.conf.xml
        #          subPath: xml_curl.conf.xml
        #        - name: freeswitch-config
        #          mountPath: /usr/local/freeswitch/conf/dialplan/default.xml
        #          subPath: default.xml
        #        - name: freeswitch-config
        #          mountPath: /usr/local/freeswitch/conf/sip_profiles/external/winwin.xml
        #          subPath: winwin.xml
        #        - name: freeswitch-config
        #          mountPath: /usr/local/freeswitch/conf/autoload_configs/oreka.conf.xml
        #          subPath: oreka.conf.xml
        #        - name: freeswitch-config
        #          mountPath: /usr/local/freeswitch/conf/autoload_configs/switch.conf.xml
        #          subPath: switch.conf.xml

      volumes:
        - name: freeswitch-config
          configMap:
            name: freeswitch-config
