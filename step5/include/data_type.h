#ifndef DATA_TYPE_H
#define DATA_TYPE_H

// インクルード
#include <string>
#include <unordered_map>
#include <stdexcept>

class DataType
{
public:
    /**
     * @brief データ種別
     */
    enum class Type
    {
        POSITION,
        WORKOFFSET,
    };

private:
    /**
     * @brief コンストラクタ (外部からアクセスしない)
     */
    explicit DataType(Type type) : type_(type) {}

public:
    /**
     * @brief 型を取得
     */
    Type GetType() const { return type_; }
    /**
     * @brief 指定した文字列からDataType型に変換
     *
     */
    static DataType FromString(const std::string &str)
    {
        const auto it = string_to_type_.find(str);
        if (it != string_to_type_.end())
        {
            return DataType(it->second);
        }
        throw std::invalid_argument("Invalid DataType string: " + str);
    }
    /**
     * @brief 指定したDataType型から文字列に変換
     *
     */
    static std::string ToString(const DataType &data_type)
    {
        const auto it = type_to_string_.find(data_type.GetType());
        if (it != type_to_string_.end())
        {
            return it->second;
        }
        throw std::invalid_argument("Invalid DataType enum value.");
    }

private:
    Type type_;
    /**
     * @brief データ種別 (文字列からDataTypeへの変換)
     * @note データ種類が追加していく
     * @attention string_to_type_に追加した場合、type_to_string_にも追加します。
     */
    inline static const std::unordered_map<std::string, Type> string_to_type_ = {
        {"POSITION", Type::POSITION},
        {"WORKOFFSET", Type::WORKOFFSET},
    };
    /**
     * @brief データ種別 (DataTypeから文字列への変換)
     * @note データ種類が追加していく
     * @attention type_to_string_に追加した場合、string_to_type_にも追加します。
     */
    inline static const std::unordered_map<Type, std::string> type_to_string_ = {
        {Type::POSITION, "POSITION"},
        {Type::WORKOFFSET, "WORKOFFSET"},
    };
};

#endif // DATA_TYPE_H
