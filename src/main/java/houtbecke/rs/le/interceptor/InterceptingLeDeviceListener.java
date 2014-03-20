package houtbecke.rs.le.interceptor;

import houtbecke.rs.le.LeDevice;
import houtbecke.rs.le.LeDeviceListener;
import houtbecke.rs.le.LeRemoteDevice;

public class InterceptingLeDeviceListener extends BaseIntercepting implements LeDeviceListener {

    LeDeviceListener leDeviceListener;
    public InterceptingLeDeviceListener(LeDeviceListener leDeviceListener, LeInterceptor leInterceptor) {
        super(leInterceptor);
        this.leDeviceListener = leDeviceListener;
    }

    @Override
    public void leDeviceFound(LeDevice leDevice, LeRemoteDevice leRemoteDevice, int rssi, byte[] scanRecord) {
        InterceptingLeDevice iLeDevice = leInterceptor.getInterceptingLeDevice(leDevice);
        InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getInterceptingLeRemoteDevice(leRemoteDevice);
        leInterceptor.deviceFound(iLeDevice, iLeRemoteDevice, rssi, scanRecord);
        leDeviceListener.leDeviceFound(iLeDevice, iLeRemoteDevice, rssi, scanRecord);
    }
}
