// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IYieldBasisLT} from "./interfaces/IYieldBasisLT.sol";

/// @notice Input struct for multicall
struct Call {
    address target;
    bytes callData;
}

/// @notice Output struct for multicall
struct Result {
    bool success;
    bytes returnData;
}

/// @notice Minimal CryptoPool interface for price discovery.
interface ICryptoPool {
    /// @notice Get the price scale (BTC price in crvUSD terms, 18 decimals)
    function price_scale() external view returns (uint256);
}

/// @title YieldBasisStrategy
/// @notice Holds collateral and calls the Yield Basis LT; exposes a TYP string for discovery.
/// @dev Uses OpenZeppelin Ownable for access control and SafeERC20 for safe token operations.
contract YieldBasisStrategy is Ownable {
    using SafeERC20 for IERC20;
    using Address for address;

    /* ───────────────────────── Errors ───────────────────────── */

    error ZeroAddress();
    error ZeroAmount();
    error DelegatecallFailed();
    error ExceedsMaxShares();
    error InvalidSlippageBPS();

    /* ───────────────────────── Events ───────────────────────── */
    event Deposited(uint256 indexed assets, uint256 debt, uint256 sharesReceived);
    event Withdrawn(uint256 indexed shares, uint256 assetsReceived, address indexed receiver);
    event TokensWithdrawn(address indexed token, address indexed to, uint256 amount);

    /* ───────────────────────── Constants ───────────────────────── */

    /// @dev Format: <subtype>:<investment>:<io token>:<version>
    string public TYP;

    /* ───────────────────────── Immutables ───────────────────────── */

    IYieldBasisLT public immutable LT;
    IERC20 public immutable ASSET;
    address public immutable AMM;
    address public immutable POOL;

    /* ───────────────────────── Constructor ───────────────────────── */

    constructor(address lt_, address owner_, string memory typ_) Ownable(owner_) {
        require(lt_ != address(0) && owner_ != address(0), ZeroAddress());
        LT = IYieldBasisLT(lt_);
        ASSET = IERC20(LT.ASSET_TOKEN());
        AMM = LT.amm();
        POOL = LT.CRYPTOPOOL();
        // give the LT infinite approval to pull ASSET tokens
        ASSET.forceApprove(lt_, type(uint256).max);
        TYP = typ_;
    }

    /* ───────────────────────── External Functions ───────────────────────── */

    /// @notice Deposit already-held assets into the LT.
    /// @param assets Amount of assets to deposit
    /// @param debt Amount of debt to take on
    /// @param minShares Minimum shares to receive (slippage protection)
    /// @return shares Number of LT shares received
    function deposit(uint256 assets, uint256 debt, uint256 minShares) external onlyOwner returns (uint256 shares) {
        require(assets != 0, ZeroAmount());

        shares = LT.deposit(assets, debt, minShares, address(this));

        emit Deposited(assets, debt, shares);
    }

    /// @notice Withdraw a specific amount of assets from LT and forward to receiver.
    /// @param assets Amount of assets to withdraw
    /// @param maxShares Maximum shares to redeem (slippage protection)
    /// @param receiver Address to receive the withdrawn assets
    /// @return assetsOut Amount of assets received
    function withdrawAssets(uint256 assets, uint256 maxShares, address receiver)
        external
        onlyOwner
        returns (uint256 assetsOut)
    {
        require(assets != 0, ZeroAmount());
        require(receiver != address(0), ZeroAddress());

        // check if we have uninvested assets first
        // if we do, use them first before withdrawing from LT
        uint256 uninvestedAssets = ASSET.balanceOf(address(this));
        if (uninvestedAssets >= assets) {
            ASSET.safeTransfer(receiver, assets);
            emit Withdrawn(0, assets, receiver);
            return assets;
        } else if (uninvestedAssets > 0) {
            // transfer the uninvested assets first
            ASSET.safeTransfer(receiver, uninvestedAssets);
            assets -= uninvestedAssets;
        }

        // Calculate shares needed for the desired asset amount
        uint256 shares = calculateSharesWithAssetAmount(assets);
        require(shares <= maxShares, ExceedsMaxShares());
        require(shares != 0, ZeroAmount());

        assetsOut = LT.withdraw(shares, assets, receiver);

        emit Withdrawn(shares, assetsOut, receiver);
    }

    /// @notice Calculate the maximum shares needed to withdraw a given asset amount out of the contract including uninvested assets.
    /// @param assets Amount of assets to withdraw
    /// @return maxShares Maximum shares needed
    function computeMaxShares(uint256 assets, uint256 slippageBPS) public view returns (uint256 maxShares) {
        require(slippageBPS <= 10000, InvalidSlippageBPS());
        uint256 uninvestedAssets = ASSET.balanceOf(address(this));
        if (uninvestedAssets >= assets) {
            return 0;
        } else {
            uint256 remainingAssets = assets - uninvestedAssets;
            maxShares = this.calculateSharesWithAssetAmount(remainingAssets);
        }
        // Adjust for slippage
        if (slippageBPS > 0) {
            maxShares = (maxShares * (10000 + slippageBPS)) / 10000;
        }
        // get the total shares held by the strategy
        uint256 totalShares = LT.balanceOf(address(this));
        if (maxShares > totalShares) {
            maxShares = totalShares;
        }
    }

    /**
     * @notice Execute a delegatecall to a target contract
     * @param target The address of the target contract
     * @param data The calldata to send to the target contract
     * @return result The returned data from the delegatecall
     */
    function delegate(address target, bytes calldata data) external onlyOwner returns (bytes memory) {
        (bool success, bytes memory result) = target.delegatecall(data);
        require(success, DelegatecallFailed());
        return result;
    }

    /// @notice Transfer out any ERC20 tokens held by the strategy
    /// @param token Address of the token to rescue
    /// @param to Recipient address
    /// @param amount Amount to rescue
    function transferERC20Tokens(address token, address to, uint256 amount) external onlyOwner {
        require(token != address(0) && to != address(0), ZeroAddress());
        require(amount != 0, ZeroAmount());

        IERC20(token).safeTransfer(to, amount);

        emit TokensWithdrawn(token, to, amount);
    }

    /* ───────────────────────── View Functions ───────────────────────── */

    /// @notice Get the total assets managed by the strategy (invested + uninvested).
    /// @dev Includes both LT shares and idle ASSET tokens held by the strategy.
    ///      Uses previewWithdraw to get actual asset amount from shares.
    /// @return totalAssets_ The total assets managed by the strategy
    /// @return totalShares_ The total LT shares held by the strategy
    function totalAssets() external view returns (uint256 totalAssets_, uint256 totalShares_) {
        (uint256 investedAssets, uint256 totalShares) = getMaxInvestedAssets();

        uint256 uninvestedAssets = ASSET.balanceOf(address(this));
        totalAssets_ = investedAssets + uninvestedAssets;
        totalShares_ = totalShares;
    }

    /// @notice Calculate the number of shares receivable for a given asset amount.
    /// @param assets Amount of assets to withdraw
    /// @return shares Number of LT shares needed
    function calculateSharesWithAssetAmount(uint256 assets) public view returns (uint256 shares) {
        if (assets == 0) return 0;

        (uint256 maxInvestedAssets, uint256 totalShares) = getMaxInvestedAssets();
        if (totalShares == 0 || maxInvestedAssets == 0) return 0;

        // If requesting more than max, return total shares
        if (assets >= maxInvestedAssets) return totalShares;

        // Calculate the percent the desired assets is of the max amount
        // shares = totalShares * (assets / maxAmount)
        shares = (totalShares * assets) / maxInvestedAssets;
    }

    function getMaxInvestedAssets() public view returns (uint256 assets_, uint256 totalShares_) {
        uint256 totalShares = LT.balanceOf(address(this));
        if (totalShares == 0) return (0, 0);

        uint256 spotPrice = LT.preview_withdraw(1e18);
        return ((totalShares * spotPrice) / 1e18, totalShares);
    }

    /// @notice Execute multiple static calls in a single call (multicall pattern for views).
    /// @dev This allows batching any view calls to minimize RPC round-trips.
    ///      Each call is executed in sequence using staticcall to ensure no state changes.
    ///      If a call fails, its result will be empty bytes and success will be false.
    ///      The batch does NOT revert on individual call failures.
    /// @param calls Array of Call structs containing target address and calldata
    /// @return results Array of Result structs containing success flag and return data
    function multicall(Call[] calldata calls) external view returns (Result[] memory results) {
        results = new Result[](calls.length);

        for (uint256 i = 0; i < calls.length; i++) {
            (bool success, bytes memory returnData) = calls[i].target.staticcall(calls[i].callData);
            results[i] = Result({success: success, returnData: returnData});
        }
    }
}
