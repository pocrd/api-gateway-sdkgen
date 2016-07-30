package net.pocrd.m.app.client;

public interface ErrorCallback {
    void callback(int apiCode, int localCode, Object data);
}
