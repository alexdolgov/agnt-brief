// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {IFLETH} from "@fleth-interfaces/IFLETH.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IPoolAddressesProvider} from "./interfaces/IAaveV3PoolAddressesProvider.sol";
import {IWrappedTokenGatewayV3} from "./interfaces/IAaveV3WrappedTokenGatewayV3.sol";
import {IPool} from "./interfaces/IAaveV3Pool.sol";
import {DataTypes} from "./interfaces/AaveV3DataTypes.sol";

import {IFLETHStrategy} from "@fleth-interfaces/IFLETHStrategy.sol";

contract AaveV3Strategy is IFLETHStrategy {
    address public immutable flETH;

    // AaveV3
    IPoolAddressesProvider public immutable addressesProvider;
    IWrappedTokenGatewayV3 public immutable wethGateway;
    IERC20 public immutable aWETH;

    bool public override isUnwinding;

    error CallerIsNotFLETH();
    error CallerIsNotFLETHOwner();

    constructor(
        address flETH_,
        IPoolAddressesProvider addressesProvider_,
        IWrappedTokenGatewayV3 wethGateway_,
        address weth_
    ) {
        flETH = flETH_;
        addressesProvider = addressesProvider_;
        wethGateway = wethGateway_;

        // fetch the aWETH address
        IPool aavePool = IPool(addressesProvider.getPool());
        DataTypes.ReserveData memory reserveData = aavePool.getReserveData(
            weth_
        );
        aWETH = IERC20(reserveData.aTokenAddress);
    }

    modifier isFLETH() {
        if (msg.sender != flETH) revert CallerIsNotFLETH();
        _;
    }

    modifier onlyFLETHOwner() {
        if (msg.sender != IFLETH(flETH).owner()) revert CallerIsNotFLETHOwner();
        _;
    }

    /**
     * @notice Deposits incoming ETH into Aave V3 and mints aWETH. The aWETH remains in this contract.
     */
    function convertETHToLST() external payable override isFLETH {
        address aavePool = addressesProvider.getPool();

        // deposit ETH into Aave
        wethGateway.depositETH{value: msg.value}({
            pool: aavePool,
            onBehalfOf: address(this),
            referralCode: 0
        });
    }

    /**
     * @notice Withdraws ETH from this contract's aWETH balance and sends it to the recipient.
     *
     * @param amount Amount of ETH to withdraw
     * @param recipient Address to receive the ETH
     */
    function withdrawETH(
        uint256 amount,
        address recipient
    ) external override isFLETH {
        _withdrawFromAave(amount, recipient);
    }

    function balanceInETH() external view override returns (uint256) {
        return aWETH.balanceOf(address(this));
    }

    function setIsUnwinding(
        bool isUnwinding_
    ) external override onlyFLETHOwner {
        isUnwinding = isUnwinding_;
    }

    /**
     * @notice Allows the owner to unwind the strategy in small amounts into ETH (to avoid price impact)
     *
     * @param ethAmount Amount of ETH to unwind to
     */
    function unwindToETH(uint256 ethAmount) external override onlyFLETHOwner {
        // withdraw ETH and send to the flETH contract
        _withdrawFromAave(ethAmount, flETH);
    }

    function emergencyRescue() external onlyFLETHOwner {
        aWETH.transfer(msg.sender, aWETH.balanceOf(address(this)));
    }

    function _withdrawFromAave(uint256 amount, address receiver) internal {
        address aavePool = addressesProvider.getPool();

        // approve aWETH for withdrawal by the gateway
        aWETH.approve(address(wethGateway), amount);

        // withdraw ETH from Aave, and send to the receiver
        wethGateway.withdrawETH({pool: aavePool, amount: amount, to: receiver});
    }
}
