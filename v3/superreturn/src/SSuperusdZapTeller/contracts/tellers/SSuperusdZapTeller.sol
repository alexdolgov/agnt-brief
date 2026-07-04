// SPDX-License-Identifier: none
pragma solidity 0.8.24;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ITellerWithMultiAssetSupport } from "./../interfaces/external/superreturn/ITellerWithMultiAssetSupport.sol";
import { Errors } from "./../libraries/Errors.sol";
import { Ownable2StepWTR } from "./../utils/Ownable2StepWTR.sol";


/// @title SSuperusdZapTeller
/// @author Sake Finance
/// @notice A teller that helps convert a base asset to sSuperUSD.
contract SSuperusdZapTeller is Ownable2StepWTR {

    /***************************************
    CONSTANTS
    ***************************************/

    address public immutable superusd;
    address public immutable ssuperusd;

    address public immutable superusdTeller;
    address public immutable ssuperusdTeller;

    /***************************************
    CONSTRUCTOR
    ***************************************/

    /// @notice Constructs the SSuperusdZapTeller contract.
    /// @param initialOwner The initial owner of the contract.
    /// @param superusd_ The address of the SuperUSD token contract.
    /// @param ssuperusd_ The address of the sSuperUSD token contract.
    /// @param superusdTeller_ The address of the SuperUSD teller.
    /// @param ssuperusdTeller_ The address of the sSuperUSD teller.
    constructor(
        address initialOwner,
        address superusd_,
        address ssuperusd_,
        address superusdTeller_,
        address ssuperusdTeller_
    ) {
        // checks
        if(
            (superusd_ == address(0)) ||
            (ssuperusd_ == address(0)) ||
            (superusdTeller_ == address(0)) ||
            (ssuperusdTeller_ == address(0))
        ) revert Errors.AddressZero();
        // set
        _transferOwnership(initialOwner);
        superusd = superusd_;
        ssuperusd = ssuperusd_;
        superusdTeller = superusdTeller_;
        ssuperusdTeller = ssuperusdTeller_;
        // pre approve superusd to ssuperusd
        SafeERC20.forceApprove(IERC20(superusd), ssuperusd, type(uint256).max);
    }

    /***************************************
    DEPOSIT FUNCTIONS
    ***************************************/

    /// @notice Deposits an asset to sSuperUSD.
    /// @param asset The asset to deposit.
    /// @param depositAmount The amount to deposit.
    /// @param minimumMint The minimum amount of sSuperUSD to mint.
    /// @param receiver The address to receive the newly minted sSuperUSD.
    /// @return ssuperusdAmount The amount of sSuperUSD minted.
    function depositAssetToSSuperUSD(
        address asset,
        uint256 depositAmount,
        uint256 minimumMint,
        address receiver
    ) external returns (uint256 ssuperusdAmount) {
        // deposit and zap
        ssuperusdAmount = _depositAssetToSSuperUSD(asset, depositAmount, minimumMint, receiver);
    }

    /// @notice Deposits an asset to sSuperUSD using ERC2612 permit.
    /// @param asset The asset to deposit.
    /// @param depositAmount The amount to deposit.
    /// @param minimumMint The minimum amount of sSuperUSD to mint.
    /// @param receiver The address to receive the newly minted sSuperUSD.
    /// @param deadline The permit deadline.
    /// @param v Part of the permit signature.
    /// @param r Part of the permit signature.
    /// @param s Part of the permit signature.
    /// @return ssuperusdAmount The amount of sSuperUSD minted.
    function depositAssetToSSuperUSDWithPermit(
        address asset,
        uint256 depositAmount,
        uint256 minimumMint,
        address receiver,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 ssuperusdAmount) {
        // permit
        IERC20Permit(asset).permit(msg.sender, address(this), depositAmount, deadline, v, r, s);
        // deposit and zap
        ssuperusdAmount = _depositAssetToSSuperUSD(asset, depositAmount, minimumMint, receiver);
    }

    /***************************************
    HELPER FUNCTIONS
    ***************************************/

    /// @notice Deposits an asset to sSuperUSD.
    /// @param asset The asset to deposit.
    /// @param depositAmount The amount to deposit.
    /// @param minimumMint The minimum amount of sSuperUSD to mint.
    /// @param receiver The address to receive the newly minted sSuperUSD.
    /// @return ssuperusdAmount The amount of sSuperUSD minted.
    function _depositAssetToSSuperUSD(
        address asset,
        uint256 depositAmount,
        uint256 minimumMint,
        address receiver
    ) internal returns (uint256 ssuperusdAmount) {
        // must deposit a valid token
        if(asset == address(0)) revert Errors.AddressZero();
        // must deposit nonzero amount
        if(depositAmount == 0) revert Errors.AmountZero();
        // transfer tokens in
        SafeERC20.safeTransferFrom(IERC20(asset), msg.sender, address(this), depositAmount);
        // get new token balance
        uint256 assetBalance = IERC20(asset).balanceOf(address(this));
        // check approval of asset to superusd
        _checkApproval(asset, superusd, assetBalance);
        // convert asset to superusd
        ITellerWithMultiAssetSupport(superusdTeller).deposit(asset, assetBalance, 0); // will revert if asset not supported
        // get superusd balance
        uint256 superusdBalance = IERC20(superusd).balanceOf(address(this));
        // check approval of superusd to ssuperusd
        _checkApproval(superusd, ssuperusd, superusdBalance);
        // convert superusd to ssuperusd
        ITellerWithMultiAssetSupport(ssuperusdTeller).deposit(superusd, superusdBalance, minimumMint); // will revert if insufficient amount minted
        // return ssuperusd amount
        ssuperusdAmount = IERC20(ssuperusd).balanceOf(address(this));
        // transfer ssuperusd to the receiver
        SafeERC20.safeTransfer(IERC20(ssuperusd), receiver, ssuperusdAmount);
    }

    /// @notice Checks the approval of an ERC20 token from this contract to another address
    /// @param token The token to check allowance
    /// @param recipient The address to give allowance to
    /// @param minAmount The minimum amount of the allowance
    function _checkApproval(address token, address recipient, uint256 minAmount) internal {
        // If current allowance is insufficient
        if (IERC20(token).allowance(address(this), recipient) < minAmount) {
            // Set allowance to max
            SafeERC20.forceApprove(IERC20(token), recipient, type(uint256).max);
        }
    }
}
