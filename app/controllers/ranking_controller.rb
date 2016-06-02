class RankingController < ApplicationController
  def have
    @ranking_have = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
  end

  def want
    @ranking_want = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
  end
  
  private
    def set_item
      @item = Item.find(params[:item_id])
    end
end
