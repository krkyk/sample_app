class GoodsController < ApplicationController
  def search
    if params[:keyword]
      @goods = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
    end
    @outdoors_goods = RakutenWebService::Ichiba::Item.search(keyword: "登山調理")
  end
end
