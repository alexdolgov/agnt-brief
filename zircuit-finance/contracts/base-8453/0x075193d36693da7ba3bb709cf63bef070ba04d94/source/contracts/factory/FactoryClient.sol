// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import { OFTComposeMsgCodec } from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";

import { Errors } from "../common/Errors.sol";
import { IFactory } from "../interfaces/IFactory.sol";
import { ContractType } from "../common/Types.sol";

contract FactoryClient is Initializable {
    struct FactoryClientStorage {
        IFactory factory;
        string clusterName;
        string underlyingSymbol;
        uint32 localEid;
    }

    // keccak256(abi.encode(uint256(keccak256("zircuit.finance.storage.FactoryClient")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant FACTORY_CLIENT_STORAGE_LOCATION =
        0x8966bd06582120daaa799b40d38db4a297fbd3a3fa513ac4922e8ed389049e00;

    function _getFactoryClientStorage()
        internal
        pure
        returns (FactoryClientStorage storage $)
    {
        assembly {
            $.slot := FACTORY_CLIENT_STORAGE_LOCATION
        }
    }

    function __FactoryClient_init(
        address _factory,
        string memory _clusterName,
        string memory _underlyingSymbol,
        uint32 _localEid
    ) internal onlyInitializing {
        FactoryClientStorage storage $ = _getFactoryClientStorage();
        $.factory = IFactory(_factory);
        $.clusterName = _clusterName;
        $.underlyingSymbol = _underlyingSymbol;
        $.localEid = _localEid;
    }

    function __FactoryClient_init(address _factory) internal onlyInitializing {
        FactoryClientStorage storage $ = _getFactoryClientStorage();
        $.factory = IFactory(_factory);
    }

    modifier whenFactoryNotPaused() {
        FactoryClientStorage storage $ = _getFactoryClientStorage();
        if ($.factory.paused()) revert Errors.Paused();
        _;
    }

    modifier onlyStrategyManager() {
        FactoryClientStorage storage $ = _getFactoryClientStorage();
        (bytes32 proxy, uint32 proxyEid) = $.factory.getDeployedOrRevert(
            ContractType.STRATEGY_MANAGER,
            $.clusterName,
            $.underlyingSymbol,
            $.localEid
        );

        if (
            OFTComposeMsgCodec.bytes32ToAddress(proxy) != msg.sender ||
            proxyEid != $.localEid
        ) revert Errors.CallerNotStrategyManager();
        _;
    }

    function _getWithdrawalMinFee(
        uint32 _srcEid,
        uint32 _dstEid
    ) internal view returns (uint256) {
        return
            _getFactoryClientStorage().factory.getWithdrawalMinFee(
                _srcEid,
                _dstEid
            );
    }
}
