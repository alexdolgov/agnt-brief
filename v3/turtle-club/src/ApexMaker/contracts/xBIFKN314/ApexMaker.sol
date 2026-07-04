// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "../interfaces/IERC314.sol";
import "./interfaces/IxBIFKN314.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract ApexMaker is AccessControl, ReentrancyGuard {
    using SafeERC20 for IERC20;

    uint256 private constant BASIS_POINTS = 10000;
    bytes32 public constant APEX_MAKER_ROLE = keccak256("APEX_MAKER_ROLE");
    bytes32 public constant APEX_MAKER_MANAGER_ROLE =
        keccak256("APEX_MAKER_MANAGER_ROLE");

    address public immutable apex;
    IxBIFKN314 public immutable xApex;
    address public immutable AVAX;
    address public treasury;
    uint256 public treasuryShare; // Percentage (0-2000, 0-20%)
    uint256 public defaultSlippage;
    uint256 public maxPriceImpact;

    event Convert(
        address indexed from,
        address indexed to,
        uint256 amount,
        uint256 amountOut
    );
    event RewardsDeposited(uint256 amount);
    event TreasuryDeposit(address indexed treasury, uint256 amount);
    event TreasuryDepositFailed(address indexed treasury, uint256 amount);

    error AmountMustBeGreaterThanZero();
    error PriceImpactTooHigh();
    error InvalidReserves();
    error InvalidAddress(address recipient);
    error FailedToSendNativeCurrency(address recipient, uint256 amount);

    constructor(address apex_, IxBIFKN314 xBIFKN314_, address treasury_) {
        apex = apex_;
        xApex = xBIFKN314_;
        AVAX = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
        treasury = treasury_;

        treasuryShare = 1000; // 10%
        defaultSlippage = 500; // 5%
        maxPriceImpact = 200; // 2%

        // Approve xApex to spend all APEX tokens
        // This way we can deposit the rewards directly
        IERC20(address(apex)).approve(address(xApex), type(uint256).max);

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(APEX_MAKER_ROLE, msg.sender);
        _grantRole(APEX_MAKER_MANAGER_ROLE, msg.sender);
    }

    function convert(
        address token_,
        uint256 amount_
    ) external nonReentrant onlyRole(APEX_MAKER_ROLE) {
        if (amount_ == 0) {
            revert AmountMustBeGreaterThanZero();
        }

        uint256 amountNative = _sellToken(token_, amount_);
        uint256 amountApex = _buyApex(amountNative);

        // check allowance just in case
        if (
            IERC20(address(apex)).allowance(address(this), address(xApex)) <
            amountApex
        ) {
            IERC20(address(apex)).approve(address(xApex), type(uint256).max);
        }

        if (amountApex > 0) xApex.depositRewards(amountApex);

        emit RewardsDeposited(amountApex);
    }

    function _sellToken(
        address token_,
        uint256 amount_
    ) internal returns (uint256) {
        (uint256 nativeReserve, uint256 tokenReserve) = IERC314(token_)
            .getReserves();
        (uint256 amountOut, , ) = IERC314(token_).getAmountOut(
            amount_,
            tokenReserve,
            nativeReserve
        );

        _checkPriceImpact(amount_, amountOut, nativeReserve, tokenReserve);

        // Slippage is 5% by default
        uint256 amountOutMin = amountOut -
            ((amountOut * defaultSlippage) / BASIS_POINTS);

        uint256 balanceBefore = nativeBalance();
        uint256 amountNative;

        // Make a low-level call
        (bool swapSuccess, bytes memory returnData) = token_.call(
            abi.encodeWithSelector(
                IERC314.swapTokenToNative.selector,
                amount_,
                amountOutMin,
                block.timestamp + 1 minutes
            )
        );

        if (!swapSuccess) {
            revert("Swap failed");
        }

        // Check if return data exists (new signature)
        if (returnData.length > 0) {
            // Decode the return value
            uint256[] memory amounts = abi.decode(returnData, (uint256[]));
            amountNative = amounts[1];
        } else {
            // Old signature, calculate native received manually
            uint256 balanceAfter = nativeBalance();
            amountNative = balanceAfter - balanceBefore;
        }

        // Split between treasury and APEX purchase
        uint256 toTreasury = (amountNative * treasuryShare) / BASIS_POINTS;
        uint256 toBuyApex = amountNative - toTreasury;

        if (toTreasury > 0) {
            (bool success, ) = payable(treasury).call{value: toTreasury}("");
            if (!success) {
                emit TreasuryDepositFailed(treasury, toTreasury); // Log failure
                // Leave funds in the contract for manual withdrawal
            } else {
                emit TreasuryDeposit(treasury, toTreasury); // Log success
            }
        }

        emit Convert(address(token_), AVAX, amount_, amountNative);

        return toBuyApex; // Return amount available for APEX purchase
    }

    function _buyApex(uint256 amount_) internal returns (uint256) {
        if (amount_ == 0) return 0;
        uint256 amountApex;
        uint256 balanceBefore = apexBalance();

        // Make a low-level call
        (bool success, bytes memory returnData) = address(apex).call{
            value: amount_
        }(
            abi.encodeWithSelector(
                IERC314.swapNativeToToken.selector,
                0,
                block.timestamp + 1 minutes
            )
        );

        if (!success) {
            revert("Swap failed");
        }

        // Check if return data exists (new signature)
        if (returnData.length > 0) {
            // Decode the return value
            uint256[] memory amounts = abi.decode(returnData, (uint256[]));
            amountApex = amounts[1];
        } else {
            // Old signature, calculate apex received manually
            uint256 balanceAfter = apexBalance();
            amountApex = balanceAfter - balanceBefore;
        }

        emit Convert(AVAX, address(apex), amount_, amountApex);

        return amountApex; // Amount of APEX received
    }

    function _checkPriceImpact(
        uint256 amountIn,
        uint256 amountOut,
        uint256 nativeReserve,
        uint256 tokenReserve
    ) internal view {
        uint256 newTokenReserve = tokenReserve + amountIn;
        uint256 newNativeReserve = nativeReserve - amountOut;

        // Calculate initial price and new price
        uint256 initialPrice = (nativeReserve * 1e18) / tokenReserve; // Scaled for precision
        uint256 newPrice = (newNativeReserve * 1e18) / newTokenReserve;

        // Calculate price impact
        uint256 priceImpact = ((initialPrice - newPrice) * BASIS_POINTS) /
            initialPrice;

        if (priceImpact > maxPriceImpact) {
            revert PriceImpactTooHigh();
        }
    }

    function apexBalance() public view returns (uint256) {
        return IERC20(address(apex)).balanceOf(address(this));
    }

    function nativeBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function withdrawAllTokens(
        IERC20 token,
        address recipient
    ) external onlyRole(APEX_MAKER_MANAGER_ROLE) {
        uint256 balance = token.balanceOf(address(this));

        if (balance == 0) return;

        if (recipient == address(0)) revert InvalidAddress(recipient);

        token.safeTransfer(recipient, balance); // Transfer tokens back to the caller
    }

    function withdrawAllNative(
        address recipient
    ) external onlyRole(APEX_MAKER_MANAGER_ROLE) {
        uint256 balance = nativeBalance();

        if (balance == 0) return;

        if (recipient == address(0)) revert InvalidAddress(recipient);

        (bool success, ) = payable(recipient).call{value: balance}("");
        if (!success) revert FailedToSendNativeCurrency(recipient, balance);
    }

    function setSlippageAndPriceImpact(
        uint256 slippage,
        uint256 priceImpact
    ) external onlyRole(APEX_MAKER_MANAGER_ROLE) {
        require(slippage <= 10000, "Slippage too high"); // Max 100%
        require(priceImpact <= 1000, "Price impact too high"); // Max 10%
        defaultSlippage = slippage;
        maxPriceImpact = priceImpact;
    }

    function setTreasuryShare(
        uint256 newShare
    ) external onlyRole(APEX_MAKER_MANAGER_ROLE) {
        require(newShare <= 2000, "Share cannot exceed 20%");
        treasuryShare = newShare;
    }

    function setTreasury(
        address newTreasury
    ) external onlyRole(APEX_MAKER_MANAGER_ROLE) {
        require(newTreasury != address(0), "Invalid address");
        require(
            newTreasury != address(this),
            "Treasury cannot be contract address"
        );

        treasury = newTreasury;
    }

    receive() external payable {}

    fallback() external payable {}
}
