#ifndef NC_INTERFACE_H
#define NC_INTERFACE_H

// インクルード
#include <iostream>
#include <fstream>
#include <unordered_map>
#include <memory>
#include <string>

/**
 * @brief データ型を統一する基底クラス (抽象クラス)
 */
class NcObject
{
public:
    virtual ~NcObject() = default;
    virtual std::string ToString() const = 0;
    virtual void Print() const { std::cout << ToString() << std::endl; }
    virtual void WriteToFile(std::ostream &os) const { os << ToString() << std::endl; }
};
/**
 * @brief 任意のデータ型を格納できる汎用クラス
 */
template <typename T>
class NcValue : public NcObject
{
private:
    T value_;
    long internal_unit_;

public:
    NcValue(T val, long internal_unit = 1)
        : value_(val), internal_unit_(internal_unit) {}

public:
    std::string ToString() const override
    {
        double value = static_cast<double>(value_);
        if (internal_unit_ > 0)
        {
            value /= internal_unit_;
        }
        return std::to_string(value);
    }
};
/**
 * @brief NCのインターフェイスクラス (抽象クラス)
 */
class INcData
{
public:
    virtual ~INcData() = default;
    virtual std::unordered_map<std::string, std::shared_ptr<NcObject>> GetData() const = 0;
};

#endif // NC_INTERFACE_H