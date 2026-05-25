// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../interfaces/chainlink/IAggregatorInterface.sol";
import "../interfaces/IOracle.sol";
import "./libraries/Errors.sol";
import "./common/Constants.sol";

contract Oracle is IOracle, Constants, OwnableUpgradeable {
    address public constant CBBTC_ORACLE = 0x2665701293fCbEB223D11A08D826563EDcCE423A;
    address public constant SUSDe_ORACLE = 0xFF3BC18cCBd5999CE63E788A1c250a88626aD099;
    address public constant DAI_ORACLE = 0xAed0c38402a5d19df6E4c03F4E2DceD6e29c1ee9;

    function initialize(bytes calldata _initBytes) external initializer {
        __Ownable_init(msg.sender);
    }

    function getAssetPrice(address _token) public view override returns (uint256) {
        address oracle_;
        if (_token == SUSDe) {
            oracle_ = SUSDe_ORACLE;
        } else if (_token == DAI) {
            oracle_ = DAI_ORACLE;
        } else if (_token == CBBTC) {
            oracle_ = CBBTC_ORACLE;
        } else {
            revert Errors.InvalidToken();
        }

        return uint256(IAggregatorInterface(oracle_).latestAnswer());
    }

    function getAssetsPrices(address[] calldata _assets) external view override returns (uint256[] memory) {
        uint256[] memory prices_ = new uint256[](_assets.length);
        for (uint256 i = 0; i < _assets.length; i++) {
            prices_[i] = getAssetPrice(_assets[i]);
        }
        return prices_;
    }
}
