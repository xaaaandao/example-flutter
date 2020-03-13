import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:youtube/model/Video.dart';

const CHAVE_YOUTUBE_API = "AIzaSyBrQSLDqhY4II3lRaYHkCEW5zfNOQtsGZc";
const ID_CANAL = "UCVHFbqXqoYvEWM1Ddxl0QDg";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {

  String RESPONSE_SEARCH = 
    "{"
    " \"kind\": \"youtube#searchListResponse\","
    " \"etag\": \"SJZWTG6xR0eGuCOh2bX6w3s4F94/y4DfCeGwgT8g-s7CLC3TID87yCM\","
    " \"nextPageToken\": \"CAEQAA\","
    " \"regionCode\": \"BR\","
    " \"pageInfo\": {"
    "  \"totalResults\": 2144,"
    "  \"resultsPerPage\": 1"
    " },"
    " \"items\": ["
    "  {"
    "   \"kind\": \"youtube#searchResult\","
    "   \"etag\": \"SJZWTG6xR0eGuCOh2bX6w3s4F94/9tXqmfU_ED50FgsMdq-K5puCjNg\","
    "   \"id\": {"
    "    \"kind\": \"youtube#video\","
    "    \"videoId\": \"NHavuyB92Pk\""
    "   },"
    "   \"snippet\": {"
    "    \"publishedAt\": \"2020-03-12T00:00:02.000Z\","
    "    \"channelId\": \"UC5ZTRH1zclthyc6b_D3m2Pw\","
    "    \"title\": \"JOGUEI OS MAPAS DO CS 1.6 NO CSGO!!\","
    "    \"description\": \"Salve pessoal, jogamos os mapas do CS 1.6 no CS:GO durante o Old School Cage! Link para meu curso de como se tornar jogador profissional de games ...\","
    "    \"thumbnails\": {"
    "     \"default\": {"
    "      \"url\": \"https://i.ytimg.com/vi/NHavuyB92Pk/default.jpg\","
    "      \"width\": 120,"
    "      \"height\": 90"
    "     },"
    "     \"medium\": {"
    "      \"url\": \"https://i.ytimg.com/vi/NHavuyB92Pk/mqdefault.jpg\","
    "      \"width\": 320,"
    "      \"height\": 180"
    "     },"
    "     \"high\": {"
    "      \"url\": \"https://i.ytimg.com/vi/NHavuyB92Pk/hqdefault.jpg\","
    "      \"width\": 480,"
    "      \"height\": 360"
    "     }"
    "    },"
    "    \"channelTitle\": \"Gaules\","
    "    \"liveBroadcastContent\": \"none\""
    "   }"
    "  }"
    " ]"
    "}";

  Future<List<Video>> pesquisar(String pesquisa) async {
    /*
    http.Response response = await http.get(
      URL_BASE + "search"
          "?part=snippet"
          "&type=video"
          "&maxResults=20"
          "&order=date"
          "&key=$CHAVE_YOUTUBE_API"
          "&channelId=$ID_CANAL"
          "&q=$pesquisa"
    );

    if( response.statusCode == 200 ){
      */

      // print("->" + RESPONSE_SEARCH);

      // Map<String, dynamic> dadosJson = json.decode( response.body );
      Map<String, dynamic> dadosJson = json.decode( RESPONSE_SEARCH );
      
      List<Video> videos = dadosJson["items"].map<Video>(
          (map){
            return Video.fromJson(map);
            //return Video.converterJson(map);
          }
      ).toList();

      return videos;
      // print("Resultado: " + videos.toString() );
      /*
      for( var video in dadosJson["items"] ){
        print("Resultado: " + video.toString() );
      }
      */
      //print("resultado: " + dadosJson["items"].toString() );
    /*
    }else{

    }
    */
  }

}

