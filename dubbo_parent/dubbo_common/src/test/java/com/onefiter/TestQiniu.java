package com.onefiter;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.BucketManager;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;
import org.junit.Test;

public class TestQiniu {

//    // 上传本地文件
//    @Test
//    public void uploadFile(){
//        //构造一个带指定Zone对象的配置类
//        Configuration cfg = new Configuration(Zone.zone1());
//        //...其他参数参考类注释
//        UploadManager uploadManager = new UploadManager(cfg);
//        //...生成上传凭证，然后准备上传
//        String accessKey = "S2a524sle_6U3eiYpreFSmeKhA77CTNq5gEYGF1e";
//        String secretKey = "dh6Z577gv9divg64uuSJniJEnBgvxmfMzRFzHQ3K";
//        String bucket = "dw-dubbo";
//        String localFilePath = "D:\\AI.png";
//        //默认不指定key的情况下，以文件内容的hash值作为文件名
//        String key = null;
//        Auth auth = Auth.create(accessKey, secretKey);
//        String upToken = auth.uploadToken(bucket);
//        try {
//            Response response = uploadManager.put(localFilePath, key, upToken);
//            //解析上传成功的结果
//            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
//            System.out.println(putRet.key);
//            System.out.println(putRet.hash);
//        } catch (QiniuException ex) {
//            Response r = ex.response;
//            System.err.println(r.toString());
//            try {
//                System.err.println(r.bodyString());
//            } catch (QiniuException ex2) {
//                //ignore
//            }
//        }
//    }
//
//    // 删除空间中的文件
//    @Test
//    public void deleteFile(){
//        //构造一个带指定Zone对象的配置类
//        Configuration cfg = new Configuration(Zone.zone0());
//        //...其他参数参考类注释
//        String accessKey = "S2a524sle_6U3eiYpreFSmeKhA77CTNq5gEYGF1e";
//        String secretKey = "dh6Z577gv9divg64uuSJniJEnBgvxmfMzRFzHQ3K";
//        String bucket = "dw-dubbo";
//        String key = "FvlRAAXZl1hnuRaelcQphEZBVLHw";
//        Auth auth = Auth.create(accessKey, secretKey);
//        BucketManager bucketManager = new BucketManager(auth, cfg);
//        try {
//            bucketManager.delete(bucket, key);
//        } catch (QiniuException ex) {
//            //如果遇到异常，说明删除失败
//            System.err.println(ex.code());
//            System.err.println(ex.response.toString());
//        }
//    }
}
