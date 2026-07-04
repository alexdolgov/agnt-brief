// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IYUsd} from "./interfaces/IYUsd.sol";
import {IManager} from "./interfaces/IManager.sol";
import {IReceipt} from "./interfaces/IReceipt.sol";
import {IAdapterCallback} from "../../interfaces/IAdapterCallback.sol";
import {IExternalPositionAdapter} from "../../interfaces/IExternalPositionAdapter.sol";
import {Asserts} from "../../libraries/Asserts.sol";
import {AdapterBase} from "../AdapterBase.sol";

contract YUSDWithdrawalAdapter is AdapterBase, IExternalPositionAdapter {
    using SafeERC20 for IERC20;
    using SafeERC20 for IYUsd;
    using Asserts for address;

    event RedeemOrderRequested(address vault, uint256 yUSDAmount, uint256 receiptId);

    error ActiveReceiptExists(uint256 receiptId);

    bytes4 public constant getAdapterId = bytes4(keccak256("yUSDWithdrawalAdapter"));

    IYUsd public immutable yUSD;
    IERC20 public immutable USDC;
    IReceipt public immutable receipt;

    mapping(address vault => uint256) public receiptIds;

    constructor(address _yUSD) {
        _yUSD.assertNotZeroAddress();

        yUSD = IYUsd(_yUSD);
        USDC = IERC20(IYUsd(_yUSD).asset());
        IManager manager = IManager(IYUsd(_yUSD).manager());
        receipt = IReceipt(manager.receipt());
    }

    function redeemAll() external virtual returns (uint256 receiptId) {
        IReceipt _receipt = receipt;
        _verifyNoActiveReceipt(_receipt);

        IYUsd _yUSD = yUSD;
        uint256 shares = _yUSD.balanceOf(msg.sender);

        IAdapterCallback(msg.sender).adapterCallback(address(this), address(_yUSD), shares);
        _yUSD.redeem(shares, msg.sender, address(this));

        receiptId = _receipt.counter();
        IReceipt.Order memory order = _receipt.readOrder(receiptId);

        if (order.receiver == msg.sender) {
            receiptIds[msg.sender] = receiptId;
        } else {
            receiptId = 0;
        }

        emit RedeemOrderRequested(msg.sender, shares, receiptId);
    }

    function supportsInterface(bytes4 interfaceId) public pure override returns (bool) {
        return interfaceId == type(IExternalPositionAdapter).interfaceId || super.supportsInterface(interfaceId);
    }

    /// @inheritdoc IExternalPositionAdapter
    function getManagedAssets() external view returns (address[] memory assets, uint256[] memory amounts) {
        return _getManagedAssets(msg.sender);
    }

    function getManagedAssets(address vault) external view returns (address[] memory assets, uint256[] memory amounts) {
        return _getManagedAssets(vault);
    }

    /// @inheritdoc IExternalPositionAdapter
    /// @dev there is no debt assets
    function getDebtAssets() external view returns (address[] memory assets, uint256[] memory amounts) {}

    function _getManagedAssets(address vault) private view returns (address[] memory assets, uint256[] memory amounts) {
        uint256 receiptId = receiptIds[vault];
        if (receiptId == 0) {
            return (assets, amounts);
        }

        IReceipt.Order memory order = receipt.readOrder(receiptId);
        if (order.receiver == address(0)) {
            // order was executed already
            return (assets, amounts);
        }

        assets = new address[](1);
        assets[0] = order.yToken;

        amounts = new uint256[](1);
        amounts[0] = order.amount;
    }

    function _verifyNoActiveReceipt(IReceipt _receipt) private view {
        uint256 currentReceipt = receiptIds[msg.sender];
        if (currentReceipt == 0) return;

        IReceipt.Order memory order = _receipt.readOrder(currentReceipt);
        if (order.receiver != address(0)) revert ActiveReceiptExists(currentReceipt);
    }
}
