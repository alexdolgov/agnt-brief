// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

import {IValuationModule} from "../interfaces/IValuationModule.sol";
import {IFeeModule} from "../interfaces/IFeeModule.sol";
import {ICrosschainModule} from "../interfaces/ICrosschainModule.sol";

import {IOracle} from "../interfaces/IOracle.sol";
import {IVault} from "../interfaces/IVault.sol";

contract Valuation is IValuationModule {
    address public immutable vault;

    mapping(address => AssetInfo) public assetInfo;

    address[] public assets;

    constructor(address _vault) {
        vault = _vault;
    }

    modifier onlyTreasury() {
        require(
            msg.sender == IVault(vault).getTreasury(),
            "AsyncWithdraw: Only Treasury"
        );
        _;
    }

    function portfolioValue() external view returns (uint256) {
        uint256 totalValue;

        for (uint256 i = 0; i < assets.length; i++) {
            totalValue += assetValue(assets[i]);
        }

        return totalValue;
    }

    function addAsset(
        address asset,
        address oracle,
        uint256 chainId
    ) external payable onlyTreasury {
        if (assetInfo[asset].chainId != 0) revert AssetExisted(asset);
        if (oracle == address(0)) revert InvalidOracle();
        if (asset == address(0)) revert InvalidAsset();
        if (chainId == 0) revert InvalidChainId();

        (, , , address feeModule, address crosschainModule) = IVault(vault)
            .getModules();

        if (feeModule != address(0)) {
            IFeeModule(feeModule).accrueFee();
        }

        if (crosschainModule == address(0) && chainId != block.chainid)
            revert CrosschainDisabled();

        assetInfo[asset].oracle = oracle;
        assetInfo[asset].chainId = chainId;

        if (chainId != block.chainid) {
            ICrosschainModule(crosschainModule).requestUpdateAsset{
                value: msg.value
            }(asset, oracle, chainId);
        } else {
            _updateAsset(asset);
        }

        assets.push(asset);

        emit AssetAdded(asset, oracle, chainId, block.timestamp);
    }

    function removeAsset(address asset) external onlyTreasury {
        uint256 length = assets.length;
        for (uint i = 0; i < length; i++) {
            if (assets[i] == asset) {
                delete assetInfo[asset];

                assets[i] = assets[length - 1];
                assets.pop();

                emit AssetRemoved(asset, block.timestamp);
                return;
            }
        }
        revert NoAssetFound(asset);
    }

    function updateAsset(address asset) external payable {
        (
            address withdrawModule,
            ,
            ,
            address feeModule,
            address crosschainModule
        ) = IVault(vault).getModules();
        require(
            msg.sender == IVault(vault).getTreasury() ||
                msg.sender == vault ||
                msg.sender == withdrawModule,
            "Invalid caller"
        );

        if (feeModule != address(0)) {
            IFeeModule(feeModule).accrueFee();
        }

        if (
            crosschainModule == address(0) &&
            assetInfo[asset].chainId != block.chainid
        ) revert CrosschainDisabled();

        if (assetInfo[asset].chainId != block.chainid) {
            ICrosschainModule(crosschainModule).requestUpdateAsset{
                value: msg.value
            }(asset, assetInfo[asset].oracle, assetInfo[asset].chainId);
        } else {
            _updateAsset(asset);
        }
    }

    function forceUpdate(address asset, uint256 amount) external {
        (, , , address feeModule, address crosschainModule) = IVault(vault)
            .getModules();
        if (msg.sender != crosschainModule)
            revert OnlyCrosschainModule(msg.sender, crosschainModule);
        if (feeModule != address(0)) {
            IFeeModule(feeModule).accrueFee();
        }

        assetInfo[asset].balance += amount;

        emit AssetUpdated(
            asset,
            crosschainModule,
            assetInfo[asset].balance,
            assetInfo[asset].price,
            assetInfo[asset].decimals,
            block.timestamp
        );
    }

    function fulfillUpdateRequest(
        address asset,
        uint256 balance,
        uint256 price,
        uint8 decimals
    ) external {
        (, , , address feeModule, address crosschainModule) = IVault(vault)
            .getModules();

        if (msg.sender != crosschainModule)
            revert OnlyCrosschainModule(msg.sender, crosschainModule);

        if (feeModule != address(0)) {
            IFeeModule(feeModule).accrueFee();
        }

        assetInfo[asset].balance = balance;
        assetInfo[asset].price = price;
        assetInfo[asset].decimals = decimals;

        emit AssetUpdated(
            asset,
            assetInfo[asset].oracle,
            balance,
            price,
            decimals,
            block.timestamp
        );
    }

    function _updateAsset(address asset) internal {
        if (assetInfo[asset].oracle == address(0)) revert InvalidOracle();

        (uint256 balance, uint256 price, uint8 decimals) = IOracle(
            assetInfo[asset].oracle
        ).getTokenInfor(asset, IVault(vault).getTreasury());

        assetInfo[asset].balance = balance;
        assetInfo[asset].price = price;
        assetInfo[asset].decimals = decimals;

        emit AssetUpdated(
            asset,
            assetInfo[asset].oracle,
            balance,
            price,
            decimals,
            block.timestamp
        );
    }

    function updateOracle(
        address asset,
        address newOracle
    ) external onlyTreasury {
        if (newOracle == address(0) || newOracle == assetInfo[asset].oracle)
            revert InvalidOracle();

        assetInfo[asset].oracle = newOracle;
        emit OracleUpdated(asset, newOracle, block.timestamp);
    }

    function assetValue(address asset) public view returns (uint256) {
        return
            (assetInfo[asset].balance * assetInfo[asset].price) /
            10 ** assetInfo[asset].decimals;
    }
}
