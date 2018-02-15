package java100.app.service;

public interface KakaotalkService {

    <T> T me(String accessToken, Class<T> type);

}
