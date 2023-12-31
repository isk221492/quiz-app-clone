require 'base64'
require 'json'
require 'net/https'

module Vision
  class << self
    def get_labels(image_file)
      # APIのURL作成
      api_url = "https://vision.googleapis.com/v1/images:annotate?key=#{ENV['GOOGLE_API_KEY']}"

      # 画像をbase64にエンコード
      base64_image = Base64.strict_encode64(File.read(image_file))

      # APIリクエスト用のJSONパラメータ
      params = {
        requests: [{
          image: {
            content: base64_image
          },
          features: [
            {
              type: 'LABEL_DETECTION'
            }
          ]
        }]
      }.to_json

      # Google Cloud Vision APIにリクエスト
      uri = URI.parse(api_url)
      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(uri.request_uri)
      request['Content-Type'] = 'application/json'
      response = https.request(request, params)

      # APIレスポンス出力
      # res =  #Deeplとつなげるとエラーになる
      JSON.parse(response.body)['responses'][0]['labelAnnotations'].pluck('description').take(3)

      # # カタカナ出力
      # Deepl.kana(res) #Deeplとつなげるとエラーになる

    end
  end
end