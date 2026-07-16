// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
 * MsigBasketStrategy — **no GMX, no RewardRouter**
 * ────────────────────────────────────────────────────────────
 *  • Dumb conduit that parks surplus WETH in the Treasury multisig.
 *  • Vault calls `invest(amount)`  → WETH sent TO multisig.
 *  • Vault calls `divest(amount)` → WETH pulled FROM multisig (multisig must
 *    have pre‑approved this contract).
 *  • `totalAssets()` = liquid WETH in multisig + WETH value of any basket
 *    tokens
 */
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Errors} from "./errors.sol";
import {IGlpStrategy} from "./interfaces/IGLPStrategy.sol";
import {OracleRouter} from "./oracles/OracleRouter.sol";
import {GUARDIAN_MULTISIG, RDNT_ARBITRUM} from "./constants.sol";
import {stdError} from "../lib/forge-std/src/StdError.sol";

contract GLPStrategy is Ownable, ReentrancyGuard, IGlpStrategy {
    using SafeERC20 for IERC20;
    using Math for uint256;

    /*────────────────── CONFIG ──────────────────*/
    IERC20 public immutable weth;
    address public immutable vault;
    OracleRouter public oracleRouter;

    // Simple array of basket tokens → oracle pricing. Assumes <= 8 tokens.
    address[] public basketTokens; // e.g., WBTC, RDNT, USDC
    /*────────────────── EVENTS ──────────────────*/

    event OracleRouterSet(address oracle);
    event BasketTokenAdded(address token);
    event BasketTokenRemoved(address token);

    /// @notice Modifier to ensure only the vault can call certain functions
    modifier onlyVault() {
        if (msg.sender != vault) {
            revert Errors.NotVault();
        }
        _;
    }

    /*────────────────── SETUP ──────────────────*/
    constructor(IERC20 _weth, address _vault, address _owner, OracleRouter router) Ownable(_owner) {
        weth = _weth;
        vault = _vault;
        oracleRouter = router;
        // The multisig must later call WETH.approve(address(this), type(uint256).max)
    }

    /*────────────────── ADMIN ──────────────────*/
    /// @notice Set the OracleRouter for this strategy.
    /// @param _router The address of the OracleRouter contract.
    function setOracleRouter(address _router) external onlyOwner {
        if (_router == address(0)) revert Errors.NullAddress();
        /// Make sure router is a contract
        if (_router.code.length == 0) revert Errors.NotAContract();
        oracleRouter = OracleRouter(_router);
        emit OracleRouterSet(_router);
    }

    /// @notice Add a new basket token to the strategy.
    /// @param token The address of the token to add.
    function addBasketToken(address token) external onlyOwner {
        if (token == address(0)) revert Errors.NullAddress();
        // Revert if there is balance in the multisig for this token
        if (IERC20(token).balanceOf(GUARDIAN_MULTISIG) > 1 && token != RDNT_ARBITRUM) revert Errors.PositiveBalance();
        // Do not allow WETH to be added as a basket token, as it's already the base asset
        if (token == address(weth)) revert Errors.TokenAlreadyExists();
        // Make sure token wasn't already added
        for (uint256 i = 0; i < basketTokens.length; i++) {
            if (basketTokens[i] == token) {
                revert Errors.TokenAlreadyExists();
            }
        }
        // If feed is not set, revert
        (uint256 price,) = oracleRouter.getAssetPrice(token);
        if (price == 0) revert Errors.InvalidPrice();
        basketTokens.push(token);
        emit BasketTokenAdded(token);
    }

    /// @notice Remove a basket token by index, replacing it with the last element.
    /// @param index The index of the token to remove.
    function removeBasketToken(uint256 index) external onlyOwner {
        if (index >= basketTokens.length) revert Errors.IndexOutOfBounds();
        address token = basketTokens[index];
        // Do not allow to remove the token if there is any balance of it in the multisig(1 wei alloowed)
        if (IERC20(token).balanceOf(GUARDIAN_MULTISIG) > 1) revert Errors.TokenHasBalance();
        basketTokens[index] = basketTokens[basketTokens.length - 1];
        basketTokens.pop();
        emit BasketTokenRemoved(token);
    }

    /*──────────────── VIEW ────────────────*/
    /// @notice Returns the total assets in the multisig, including WETH and basket tokens.
    /// @return The total value of assets in the multisig, denominated in WETH.
    function totalAssets() public view override returns (uint256) {
        // If no basket tokens are set, return only WETH balance
        uint256 total = weth.balanceOf(GUARDIAN_MULTISIG);
        if (basketTokens.length == 0) return total;
        for (uint256 i = 0; i < basketTokens.length; i++) {
            address token = basketTokens[i];
            uint256 tokenBalance = IERC20(token).balanceOf(GUARDIAN_MULTISIG);
            // Scale token balance based on decimals to 18 decimals
            tokenBalance = tokenBalance * (10 ** (18 - ERC20(token).decimals()));
            if (tokenBalance == 0) continue;
            (uint256 price, uint8 decimals) = oracleRouter.getAssetPrice(token);
            // If price is 0, revert
            if (price == 0) revert Errors.InvalidPrice();
            total += tokenBalance.mulDiv(price, 10 ** decimals);
        }
        return total;
    }

    /// @notice Returns all basket tokens in the strategy.
    /// @return An array of addresses representing the basket tokens.
    function getBasketTokens() external view returns (address[] memory) {
        return basketTokens;
    }

    /*───────────── STRATEGY ACTIONS ─────────────*/
    /// @notice Vault sends WETH, we forward to multisig; returns amount forwarded.
    /// @param amount The amount of WETH to invest.
    /// @return The amount of WETH that was successfully forwarded to the multisig.
    function invest(uint256 amount) external override nonReentrant onlyVault returns (uint256) {
        weth.safeTransferFrom(vault, GUARDIAN_MULTISIG, amount);
        return amount;
    }

    /// @notice Pull `amount` WETH back from multisig; multisig must have approved.
    /// @param amount The amount of WETH to divest.
    /// @return The amount of WETH that was successfully pulled from the multisig.
    function divest(uint256 amount) external override nonReentrant onlyVault returns (uint256) {
        weth.safeTransferFrom(GUARDIAN_MULTISIG, address(this), amount);
        weth.safeTransfer(vault, amount);
        return amount;
    }
}
