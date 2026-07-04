// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.17;

import "@pythnetwork/pyth-sdk-solidity/PythStructs.sol";


contract PythMock {
    mapping(bytes32 => PythStructs.Price) public prices;

    function getUpdateFee(
        bytes[] calldata updateData
    ) external  view returns (uint256){
        return 1;
    }

    function updatePriceFeeds(bytes[] calldata updateData) external payable{
        return;
    }

    function setPrice(bytes32 _id,int64 _price,uint64 _conf,int32 _expo) external payable{
        PythStructs.Price memory price = PythStructs.Price(
            _price,
            _conf,
            _expo,
            block.timestamp
        );
        prices[_id] = price;
    }

    function getPriceUnsafe(
        bytes32 id
    ) external view returns (PythStructs.Price memory price){
        return prices[id];
    }
}
