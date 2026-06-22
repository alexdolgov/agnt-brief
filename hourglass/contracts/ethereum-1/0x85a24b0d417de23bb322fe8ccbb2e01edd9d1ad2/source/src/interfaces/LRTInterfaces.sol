// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {IERC20 as ERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";

interface IStEth is ERC20 {
    function submit(address _referral) external payable returns (uint256);

    function getTotalPooledEther() external view returns (uint256);

    function getTotalShares() external view returns (uint256);

    function getSharesByPooledEth(uint256 _ethAmount) external view returns (uint256);

    function getCurrentStakeLimit() external view returns (uint256);

    function approve(address spender, uint256 value) external returns (bool);
}

interface IWstEth is ERC20 {
    function wrap(uint256 _stETHAmount) external returns (uint256);

    /**
     * @notice Exchanges wstETH to stETH
     * @param _wstETHAmount amount of wstETH to uwrap in exchange for stETH
     * @dev Requirements:
     *  - `_wstETHAmount` must be non-zero
     *  - msg.sender must have at least `_wstETHAmount` wstETH.
     * @return Amount of stETH user receives after unwrap
     */
    function unwrap(uint256 _wstETHAmount) external returns (uint256);

    function getStETHByWstETH(uint256 _ETHAmount) external view returns (uint256);

    function getWstETHByStETH(uint256 _stETHAmount) external view returns (uint256);

    function stETH() external view returns (address);

    function stEthPerToken() external view returns (uint256);

    function tokensPerStEth() external view returns (uint256);
}

interface IEtherFi {
    // weETH

    function wrap(uint256 amount) external returns (uint256);

    // eETH
    function deposit(address referral) external payable returns (uint256);
    function deposit(uint256 amount) external returns (uint256);
    function deposit(address referral, uint256 amount) external returns (uint256);

    /**
     * @notice Deposits assets into the cellar, and returns shares to receiver.
     * @param assets amount of assets deposited by user.
     * @param receiver address to receive the shares.
     * @return shares amount of shares given for deposit.
     */
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    /**
     * @notice Allows users to deposit into cellar using alternative assets.
     * @param depositAsset the asset to deposit
     * @param assets amount of depositAsset to deposit
     * @param receiver address to receive the shares
     */
    function multiAssetDeposit(ERC20 depositAsset, uint256 assets, address receiver)
        external
        returns (uint256 shares);
}

interface IEtherFiLUSD is ERC20 {
    // EtherFi LUSD Minter
    function deposit(ERC20 depositAsset, uint256 depositAmount, uint256 minimumMint)
        external
        returns (uint256 shares);
    function depositWithPermit(
        ERC20 depositAsset,
        uint256 depositAmount,
        uint256 minimumMint,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 shares);

    /// ignore these
    function enter(address from, address asset, uint256 assetAmount, address to, uint256 shareAmount)
        external
        returns (uint256);
    function exit(address to, address asset, uint256 assetAmount, address from, uint256 shareAmount)
        external
        returns (uint256);

    function getRate() external view returns (uint256);
    function decimals() external view returns (uint8);
}

interface IFrax {
    // used for minting frxETH & staking to receive sfrxETH
    function submitAndDeposit(address recipient) external payable returns (uint256 shares);
    // used to obtain frxETH
    function submit() external payable;
    // redeem sfrxETH to frxETH
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);
}

interface IEthena {}

interface ICurve {
    // curve pool functions
    function get_dy(int128 i, int128 j, uint256 dx) external view returns (uint256);
    /// @notice Perform an exchange between two coins
    /// @dev Index values can be found via the `coins` public getter method
    /// @param i Index value for the coin to send
    /// @param j Index value of the coin to receive
    /// @param _dx Amount of `i` being exchanged
    /// @param _min_dy Minimum amount of `j` to receive
    /// @return Actual amount of `j` received
    function exchange(int128 i, int128 j, uint256 _dx, uint256 _min_dy) external returns (uint256);
    function exchange(uint256 i, uint256 j, uint256 dx, uint256 min_dy) external payable returns (uint256);
    /// @notice Perform an exchange between two coins, where sender transfers in the input token amount
    /// @dev Index values can be found via the `coins` public getter method
    /// @param i Index value for the coin to send
    /// @param j Index value of the coin to receive
    /// @param _dx Amount of `i` being exchanged
    /// @param _min_dy Minimum amount of `j` to receive
    /// @param _receiver Address that receives `j`
    /// @return Actual amount of `j` received
    function exchange_received(int128 i, int128 j, uint256 _dx, uint256 _min_dy, address _receiver)
        external
        returns (uint256);
}
