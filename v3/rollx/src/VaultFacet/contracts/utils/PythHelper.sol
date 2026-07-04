// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {PythError} from "./Errors.sol";
import "@pythnetwork/pyth-sdk-solidity/IPyth.sol";
import "@pythnetwork/pyth-sdk-solidity/PythStructs.sol";

library PythHelper {

    uint constant public BASE = 8453;
    IPyth constant public BASE_PYTH = IPyth(0x8250f4aF4B972684F7b336503E2D6dFeDeB1487a);

    uint constant public BASE_SEPOLIA = 84532;
    IPyth constant public BASE_SEPOLIA_PYTH = IPyth(0xA2aa501b19aff244D90cc15a4Cf739D2725B5729);

    event PythFee(address sender, uint amount);

    function getPythPrice(bytes32 priceId, bytes calldata updateData) internal returns (uint64) {
        uint256 chainId = block.chainid;
        IPyth pyth;
        if (chainId == BASE) {
            pyth = BASE_PYTH;
        } else if (chainId == BASE_SEPOLIA) {
            pyth = BASE_SEPOLIA_PYTH;
        }
        
        bytes[] memory data = new bytes[](1);
        data[0] = updateData;
        uint fee = pyth.getUpdateFee(data);
        
        pyth.updatePriceFeeds{value: fee}(data);

        // If there's excess ETH, return it
        if (msg.value > fee) {
            payable(msg.sender).transfer(msg.value - fee);
        }
        emit PythFee(msg.sender, fee);

        PythStructs.Price memory price = pyth.getPriceNoOlderThan(priceId, 60);
        if (price.price <= 0) revert PythError.InvalidPrice(priceId, price.price);
        return _convertPrice(price);
    }

    function getPrice(bytes32 priceId) internal view returns (int64, int32, uint) {
        uint256 chainId = block.chainid;
        IPyth pyth;
        if (chainId == BASE) {
            pyth = BASE_PYTH;
        } else if (chainId == BASE_SEPOLIA) {
            pyth = BASE_SEPOLIA_PYTH;
        }
        // max 12h
        PythStructs.Price memory price = pyth.getPriceNoOlderThan(priceId, 60);
        if (price.price <= 0) revert PythError.InvalidPrice(priceId, price.price);
        return (price.price, price.expo, price.publishTime);
    }

    function getHistoryPythPrice(
        bytes32 priceId, uint64 publishTime, bytes calldata updateData
    ) internal returns (uint64) {
        uint256 chainId = block.chainid;
        IPyth pyth;
        if (chainId == BASE) {
            pyth = BASE_PYTH;
        } else if (chainId == BASE_SEPOLIA) {
            pyth = BASE_SEPOLIA_PYTH;
        }
        bytes[] memory data = new bytes[](1);
        data[0] = updateData;
        uint fee = pyth.getUpdateFee(data);
        bytes32[] memory priceIds = new bytes32[](1);
        priceIds[0] = priceId;
        PythStructs.PriceFeed[] memory priceFeeds = pyth.parsePriceFeedUpdates{value: fee}(data, priceIds, publishTime, publishTime + 5);
        PythStructs.Price memory price = priceFeeds[0].price;
        if (price.price <= 0) revert PythError.InvalidHistoryPrice(priceId, publishTime, price.price);
        return _convertPrice(price);
    }

    function _convertPrice(PythStructs.Price memory priceData) private pure returns (uint64) {
        int64 price = priceData.price;
        int32 expo = priceData.expo;
        if (expo > 0) revert PythError.InvalidExpo(price, expo);
        // If the expo is -8, directly cast the price to uint64
        if (expo == -8) {
            return uint64(price);
        } else if (expo > -8){
            return uint64(price) * uint64(10 ** uint32(8 + expo));
        } else {
            return uint64(price) / uint64(10 ** uint32(-(8 + expo)));
        }
    }
}
