module EmptyRoomHelper

  def get_status_name(status_info)

    case status_info
    when 0
      return "未定"
    when 1
      return "1番手あり"
    when 2
      return "審査中"
    when 3
      return "その他"
    else
      return "想定外データ"
    end

  end

  def get_arrangement_name(arrangement_info)

    case arrangement_info
    when 0
      return "1R"
    when 1
      return "1K"
    when 2
      return "1DK"
    when 3
      return "1LDK"
    when 4
      return "2K"
    when 5
      return "2DK"
    when 6
      return "2LDK"
    when 7
      return "3K"
    when 8
      return "3DK"
    when 9
      return "3LDK"
    when 10
      return "4K"
    when 11
      return "4DK"
    when 12
      return "4LDK"
    when 13
      return "5K以上"
    else
      return "想定外データ"
    end

  end

  def get_parking_status_name(status_info)

    case status_info
    when 0
      return "あり（有料）"
    when 1
      return "空きなし"
    when 2
      return "あり（無料）"
    when 3
      return "無し"
    else
      return "想定外データ"
    end

  end

  def get_pet_info(info)
    if info == 0
      return "可"
    else
      return "不可"
    end
  end

    def get_gas_name(gas_info)

      case gas_info
      when 0
        return "東京ガス"
      when 1
        return "プロパン"
      when 2
        return "オール電化"
      else
        return "想定外データ"
      end

    end

end
