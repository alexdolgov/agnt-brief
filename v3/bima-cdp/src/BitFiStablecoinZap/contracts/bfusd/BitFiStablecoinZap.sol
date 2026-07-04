// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "../interfaces/IBitFiStablecoinMinter.sol";
import "../interfaces/IStakedBitFiStablecoin.sol";
import "../interfaces/IBitFiStablecoin.sol";

import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

/**
 * @title BitFiStablecoinZap
 * @author BitFi Labs
 * @notice Mint and stake bfUSD in a single transaction.
 */
contract BitFiStablecoinZap is Initializable, UUPSUpgradeable, OwnableUpgradeable {
    using SafeERC20 for IERC20;

    // --- Errors ---
    error Slippage();

    event Stake(
        address indexed user,
        address indexed receiver,
        address minter,
        address stakedBfusd,
        uint256 stableAmount,
        uint256 bfusdAmount,
        uint256 stakedAmount
    );

    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) external initializer {
        __Ownable_init(_owner);
        __UUPSUpgradeable_init();
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    function previewStake(
        IBitFiStablecoinMinter minter,
        IStakedBitFiStablecoin stakedBfusd,
        uint256 stableAmount
    ) external view returns (uint256 bfusdAmount, uint256 stakedAmount) {
        if (stableAmount == 0 || address(minter) == address(0) || address(stakedBfusd) == address(0)) {
            return (0, 0);
        }

        (bfusdAmount, ) = minter.previewMint(stableAmount, address(this));
        if (bfusdAmount > 0) {
            stakedAmount = stakedBfusd.previewDeposit(bfusdAmount);
        }
    }

    function stake(
        IBitFiStablecoinMinter minter,
        IStakedBitFiStablecoin stakedBfusd,
        uint256 stableAmount,
        uint256 minOutput,
        address receiver
    ) external {
        IERC20 stable = minter.underlying();

        stable.safeTransferFrom(msg.sender, address(this), stableAmount);
        stable.forceApprove(address(minter), stableAmount);

        uint256 bfusdAmount = minter.mint(stableAmount, address(this), 0);

        minter.bfUSD().approve(address(stakedBfusd), bfusdAmount);
        uint256 stakedAmount = stakedBfusd.deposit(bfusdAmount, receiver);
        if (stakedAmount < minOutput) revert Slippage();

        emit Stake(msg.sender, receiver, address(minter), address(stakedBfusd), stableAmount, bfusdAmount, stakedAmount);
    }
}
