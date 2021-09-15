class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    return @items.map { |item| item[:name] }.sort
  end

  def cheap
    return @items.select { |item| item[:price] < 30.0 }
  end

  def out_of_stock
    return @items.select { |item| item[:quantity_by_size] == {} }
  end

  def stock_for_item(name)
    return @items.find{ |item| item[:name] == name} [:quantity_by_size]
  end

  def total_stock
    return items.reduce(0) {|total, item| total + item[:quantity_by_size].values.sum}
  end

  private
  attr_reader :items
end
