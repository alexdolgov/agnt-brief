// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@4.9.6/access/Ownable.sol";
import "@openzeppelin/contracts@4.9.6/utils/Address.sol";
import "@openzeppelin/contracts@4.9.6/token/ERC20/utils/SafeERC20.sol";
import "./Addresses.sol";
import "../FourERC20.sol";
import "../IPancakeFactory.sol";
import "../IPancakePair.sol";
import "../IPancakeRouter02.sol";
import "../IPancakeV3Factory.sol";
import "../IWETH.sol";
import "./ITokenCreator8.sol";

/**
 * @title ITokenHelper
 * @notice Interface for helper contract handling token liquidity addition and swaps
 */
interface ITokenHelper {
    /**
     * @notice Add liquidity
     * @param amountToken Token amount
     */
    function addLiquidity(uint256 amountToken) external;

    /**
     * @notice Add liquidity using quote token
     * @param amountQuote Amount of quote token
     */
    function addLiquidityWithQuote(uint256 amountQuote) external;

    /**
     * @notice Swap quote token for token
     * @param to Address to receive token
     * @param amountQuote Amount of quote token
     * @return amountToken Amount of token received
     */
    function swapForToken(address to, uint256 amountQuote) external returns (uint256 amountToken);

    /**
     * @notice Swap token for quote token
     * @param to Address to receive quote token
     * @param amountToken Token amount
     * @return amountQuote Amount of quote token received
     */
    function swapForQuote(address to, uint256 amountToken) external returns (uint256 amountQuote);

    /**
     * @notice Swap token for ETH
     * @param to Address to receive ETH
     * @param amountToken Token amount
     * @return amountETH Amount of ETH received
     */
    function swapForETH(address to, uint256 amountToken) external returns (uint256 amountETH);
}

/**
 * @title IShareHolderManager
 * @notice Interface for shareholder management contract, used to check if an address is blacklisted
 */
interface IShareHolderManager {
    /**
     * @notice Check if an address is blacklisted
     * @param account Address to check
     * @return Returns true if the address is blacklisted, false otherwise
     */
    function isBlacklisted(address account) external returns (bool);
}

/**
 * @title Token
 * @notice Token contract - Advanced ERC20 token supporting transaction fees, reward distribution, and multiple allocation modes
 * 
 * Key Features:
 * - Transaction fee mechanism: Charges a certain percentage of fees on buy/sell transactions
 * - Reward distribution mechanism: Token holders receive reward distributions based on their holdings
 * - Multiple allocation modes: Fees can be allocated to founder, holders, burn, and liquidity
 * - Anti-sniper protection: Prevents malicious addresses from participating in rewards through blacklist mechanism
 */
contract Token is FourERC20, Ownable {
    /// @notice Wrapped ETH address
    address public constant WETH = Addresses.WETH;

    /// @notice Burn address
    address public constant DEAD = address(0xdEaD);

    /// @notice PancakeSwap Factory contract address
    address public constant PANCAKE_FACTORY = Addresses.PANCAKE_FACTORY;

    /// @notice PancakeSwap Router contract address
    address public constant PANCAKE_ROUTER = Addresses.PANCAKE_ROUTER;

    /// @notice Token Manager 2 contract address
    address public constant TOKEN_MANAGER_2 = Addresses.TOKEN_MANAGER_2;

    /// @notice Token Helper 5 contract address, used for handling swaps and liquidity operations
    address public constant TOKEN_HELPER_5 = Addresses.TOKEN_HELPER_5;

    /// @notice Shareholder management contract address, used for blacklist checks
    address public constant SHARE_HOLDER_MANAGER = Addresses.SHARE_HOLDER_MANAGER;

    /// @notice Normal transfer mode - allows all transfers
    uint public constant MODE_NORMAL = 0;

    /// @notice Restricted transfer mode
    uint public constant MODE_TRANSFER_RESTRICTED = 1;

    /// @notice Controlled transfer mode
    uint public constant MODE_TRANSFER_CONTROLLED = 2;

    /// @notice Current transfer mode
    uint public _mode;

    /// @notice Whether the contract has been initialized
    bool private _initialized;

    /// @notice Whether a swap operation is in progress (used to prevent reentrancy)
    bool private _swapping;

    /// @notice Quote token address
    address public quote;

    /// @notice PancakeSwap pair address
    address public pair;

    /// @notice Founder address, receives founder rewards
    address public founder;

    /// @notice Purchase fee rate
    uint256 public feeRateBuy;

    /// @notice Selling fee rate
    uint256 public feeRateSell;

    /// @notice Deprecated, kept for compatibility
    uint256 public feeRate;

    /// @notice Founder allocation rate
    uint256 public rateFounder;

    /// @notice Holder allocation rate
    uint256 public rateHolder;

    /// @notice Burn allocation rate
    uint256 public rateBurn;

    /// @notice Liquidity allocation rate
    uint256 public rateLiquidity;

    /// @notice Minimum dispatch threshold, fees are only dispatched when accumulated fees reach this value
    uint256 public minDispatch;

    /// @notice Minimum holding amount, addresses below this value do not participate in rewards
    uint256 public minShare;

    /**
     * @notice User reward information structure
     * @param share User token holding share (0 if balance is below minShare)
     * @param rewardDebt Calculated reward debt, used to track already accounted rewards
     * @param claimable Claimable reward amount (in quote tokens)
     * @param claimed Claimed reward amount (in quote tokens)
     */
    struct UserInfo {
        uint256 share;        // User token holding share (0 if balance < minShare)
        uint256 rewardDebt;   // Calculated reward debt, used to track already accounted rewards
        uint256 claimable;    // Claimable reward amount (in quote tokens)
        uint256 claimed;      // Claimed reward amount (in quote tokens)
        bool exists;
    }

    /// @notice Magnitude multiplier, used for calculating feePerShare (2^128)
    uint256 internal constant MAGNITUDE = 2 ** 128;

    /// @notice User address list, stores all addresses whose share has ever changed (only addresses with actual share changes are recorded)
    address[] private _users;

    /// @notice User reward information mapping
    mapping(address => UserInfo) public userInfo;

    /// @notice Total token holding shares (sum of all user shares, excluding addresses below minShare)
    uint256 public totalShares;

    /// @notice Cumulative reward amount per share (using MAGNITUDE precision, accumulates with each dispatch)
    uint256 public feePerShare;

    /// @notice Total accumulated fees (not yet dispatched).
    uint256 public feeAccumulated;

    /// @notice Total fees that will be dispatched to founder
    uint256 public feeToFounder;

    /// @notice Total fees that will be used to buy tokens for burning
    uint256 public feeToBurn;

    /// @notice Total fees that will be used to add liquidity
    uint256 public feeToLiquidity;

    /// @notice Total dispatched fees
    uint256 public feeDispatched;

    /// @notice Total fees allocated to founder
    uint256 public feeFounder;

    /// @notice Total fees allocated to holders
    uint256 public feeHolder;

    /// @notice Total fees burned
    uint256 public feeBurned;

    /// @notice Total fees added to liquidity
    uint256 public feeLiquidity;

    /// @notice Total quote tokens claimed
    uint256 public feeClaimed;

    /// @notice Total accumulated fees (in token)
    uint256 public tokenAccumulated;

    /// @notice Total tokens burned
    uint256 public tokenBurned;

    /**
     * @notice Fee dispatch event
     * @param amountFounder Token amount allocated to founder
     * @param amountHolder Token amount allocated to holders
     * @param amountBurn Token amount burned
     * @param amountLiquidity Token amount added to liquidity
     */
    event FeeDispatched(
        uint256 amountFounder,
        uint256 amountHolder,
        uint256 amountBurn,
        uint256 amountLiquidity);

    /**
     * @notice Reward claim event
     * @param account Address claiming rewards
     * @param amount Amount of quote tokens claimed
     */
    event FeeClaimed(
        address account,
        uint256 amount);

    /**
     * @notice Fee insufficient event when claiming
     * @param account Address claiming rewards
     * @param claimable Claimable quote token amount
     * @param balance Actual quote token balance in contract
     */
    event FeeInsufficient(
        address account,
        uint256 claimable,
        uint256 balance
    );

    /**
     * @notice Initialize the token contract
     * @param a Initialization parameters structure, containing:
     *   - quote: Quote token address
     *   - founder: Founder address
     *   - feeRateBuy: Purchase fee rate (percentage)
     *   - feeRateSell: Selling fee rate (percentage)
     *   - rateFounder: Founder allocation rate (percentage)
     *   - rateHolder: Holder allocation rate (percentage)
     *   - rateBurn: Burn allocation rate (percentage)
     *   - rateLiquidity: Liquidity allocation rate (percentage)
     *   - minDispatch: Minimum dispatch threshold
     *   - minShare: Minimum holding amount
     *   - name: Token name
     *   - symbol: Token symbol
     *   - totalSupply: Total supply
     */
    function init(ITokenCreator8.InitParams memory a) public onlyOwner {
        require(!_initialized, "Token: initialized");
        require(a.feeRateBuy <= 10, "Token: invalid feeRateBuy");
        require(a.feeRateSell <= 10, "Token: invalid feeRateSell");
        require((a.founder == address(0)) == (a.rateFounder == 0), "Token: invalid rateFounder");
        require(a.rateFounder + a.rateHolder + a.rateBurn + a.rateLiquidity == 100, "Token: invalid total rates");
        _initialized = true;
        quote = a.quote;
        founder = a.founder;
        feeRateBuy = a.feeRateBuy;
        feeRateSell = a.feeRateSell;
        rateFounder = a.rateFounder;
        rateHolder = a.rateHolder;
        rateBurn = a.rateBurn;
        rateLiquidity = a.rateLiquidity;
        minDispatch = a.minDispatch;
        minShare = a.minShare;
        _init(a.name, a.symbol);
        _mint(owner(), a.totalSupply);
        _mode = MODE_TRANSFER_RESTRICTED;
        _updateShare(owner());
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);
        if (_mode == MODE_TRANSFER_RESTRICTED) {
            revert("Token: Transfer is restricted");
        }
        if (_mode == MODE_TRANSFER_CONTROLLED) {
            require(from == owner() || to == owner(), "Token: Invalid transfer");
        }
    }

    function setMode(uint256 v) public onlyOwner {
        if (_mode != MODE_NORMAL) {
            _mode = v;
        }
    }

    function _pair() internal returns (address) {
        if (pair == address(0) && _mode == MODE_NORMAL) {
            pair = IPancakeFactory(PANCAKE_FACTORY).getPair(address(this), quote);
        }
        return pair;
    }

    function _transfer(
        address from,
        address to,
        uint256 amount
    ) internal override {
        require(to != address(this), "Token: invalid recipient");
        _pair();

        if (!_swapping) {
            if (_mode == MODE_NORMAL) {
                if (to == pair) {
                    _dispatchFee();
                }
                uint256 fee;
                if (from == pair && to != TOKEN_MANAGER_2) {
                    fee = amount * feeRateBuy / 100;
                } else if (to == pair && from != TOKEN_MANAGER_2) {
                    fee = amount * feeRateSell / 100;
                }
                if (fee > 0) {
                    amount -= fee;
                    super._transfer(from, address(this), fee);
                    tokenAccumulated += fee;
                }
            } else {
                _dispatchFee();
            }
        }

        super._transfer(from, to, amount);

        _updateShare(from);
        if (from != to) {
            _updateShare(to);
        }

        if (_mode == MODE_NORMAL && !_swapping) {
            if (msg.sender != pair && from != pair && to != pair) {
                _dispatchFee();
                _claimFee(from);
            }
        }
    }

    function _isShareHolder(address account) internal returns (bool) {
        return account != _pair() &&
               account != TOKEN_MANAGER_2 &&
               account != address(this) &&
               account != address(0) &&
               account != DEAD;
    }

    function _updateShare(address account) internal {
        if (rateHolder == 0 || !_isShareHolder(account)) {
            return;
        }

        uint256 newShare = balanceOf(account);
        if (newShare < minShare) {
            newShare = 0;
        }

        UserInfo storage info = userInfo[account];
        uint256 curShare = info.share;
        if (newShare == curShare) {
            return;
        }

        if (!info.exists) {
            _users.push(account);
            info.exists = true;
        }

        if (curShare > 0) {
            uint256 accFee = curShare * feePerShare / MAGNITUDE;
            if (accFee > info.rewardDebt) {
                info.claimable += accFee - info.rewardDebt;
            }
        }

        info.share = newShare;
        info.rewardDebt = newShare * feePerShare / MAGNITUDE;

        if (newShare > curShare) {
            totalShares = totalShares + (newShare - curShare);
        } else {
            totalShares = totalShares - (curShare - newShare);
        }
    }

    function _dispatchFee() internal {
        if (tokenAccumulated > 0 && tokenAccumulated >= minDispatch) {
            feeAccumulated += _swapForQuote(address(this), tokenAccumulated);
            tokenAccumulated = 0;
        }

        uint256 amountTotal = feeAccumulated;
        if (quote == WETH) {
            if (amountTotal < 10 * 10**15) {
                return;
            }
        } else {
            if (amountTotal < 10 * 10**18) {
                return;
            }
        }

        feeAccumulated = 0;
        uint256 rateTotal = rateFounder + rateBurn + rateLiquidity;
        uint256 amountFounder;
        uint256 amountHolder;
        uint256 amountBurn;
        uint256 amountLiquidity;

        if (rateHolder > 0 && totalShares > 0) {
            rateTotal += rateHolder;
            amountHolder = amountTotal * rateHolder / rateTotal;
            feePerShare += (amountHolder * MAGNITUDE / totalShares);
            feeHolder += amountHolder;
        }
        if (rateFounder > 0) {
            amountFounder = amountTotal * rateFounder / rateTotal;
            feeToFounder += amountFounder;
            _sendFeeToFounder();
        }
        if (rateBurn > 0) {
            amountBurn = amountTotal * rateBurn / rateTotal;
            feeToBurn += amountBurn;
            if (_mode == MODE_NORMAL) {
                _burnToken();
            }
        }
        if (rateLiquidity > 0) {
            amountLiquidity = amountTotal * rateLiquidity / rateTotal;
            feeToLiquidity += amountLiquidity;
            if (_mode == MODE_NORMAL) {
                _addLiquidity();
            }
        }

        uint256 amountDispatched = amountFounder + amountHolder + amountBurn + amountLiquidity;
        feeAccumulated = amountTotal - amountDispatched;
        feeDispatched += amountDispatched;

        emit FeeDispatched(amountFounder, amountHolder, amountBurn, amountLiquidity);
    }

    /**
     * @notice Query the claimable reward amount for an account
     * @param account Account address
     * @return Claimable quote token amount
     */
    function claimableFee(address account) view public returns (uint256) {
        UserInfo storage info = userInfo[account];
        uint256 amount = info.claimable;

        uint256 accFee = info.share * feePerShare / MAGNITUDE;
        if (accFee > info.rewardDebt) {
            amount += accFee - info.rewardDebt;
        }

        return amount;
    }

    /**
     * @notice Query the claimed reward amount for an account
     * @param account Account address
     * @return Claimed quote token amount
     */
    function claimedFee(address account) view public returns (uint256) {
        return userInfo[account].claimed;
    }

    /**
     * @notice Claim rewards
     */
    function claimFee() external {
        _claimFee(msg.sender);
    }

    /**
     * @notice Claim rewards
     * @param accounts Account addresses
     */
    function claimFee(address[] memory accounts) external {
        for (uint256 i = 0; i < accounts.length; i++) {
            _claimFee(accounts[i]);
        }
    }

    /**
     * @notice Get total number of users in the array
     * @return Total count of addresses in _users array
     */
    function userCount() public view returns (uint256) {
        return _users.length;
    }

    /**
     * @notice Query user list (batch query, supports pagination and filtering)
     * @param index Starting index (from which position to query in _users array)
     * @param count Number of users to return
     * @param minClaimable Minimum claimable amount filter (0 means no filter)
     * @return Address array of users (addresses not meeting minClaimable are returned as DEAD address)
     * @dev Used for batch querying users who need to claim rewards, supporting pagination to avoid gas limit.
     *      Only addresses with actual share changes (newShare != curShare) are included in _users array.
     */
    function users(uint256 index, uint256 count, uint256 minClaimable) view public returns (address[] memory) {
        address[] memory a = new address[](count);
        for (uint256 i = 0; i < count; i++) {
            address e;
            if (index < _users.length) {
                e = _users[index];
                if (minClaimable > 0 && claimableFee(e) < minClaimable) {
                    e = DEAD;
                }
            }
            a[i] = e;
            index++;
        }
        return a;
    }

    function _claimFee(address account) internal {
        if (IShareHolderManager(SHARE_HOLDER_MANAGER).isBlacklisted(account)) {
            return;
        }

        uint256 amountQuote = claimableFee(account);
        if (amountQuote > 0) {
            UserInfo storage info = userInfo[account];
            info.rewardDebt = info.share * feePerShare / MAGNITUDE;
            info.claimable = 0;

            uint256 balanceQuote = IERC20(quote).balanceOf(address(this));
            uint256 _amountQuote = amountQuote;
            if (amountQuote > balanceQuote) {
                emit FeeInsufficient(account, amountQuote, balanceQuote);
                amountQuote = balanceQuote;
            }

            SafeERC20.safeTransfer(IERC20(quote), account, amountQuote);
            info.claimable = _amountQuote - amountQuote;
            info.claimed += amountQuote;
            feeClaimed += amountQuote;

            emit FeeClaimed(account, amountQuote);
        }
    }

    function _sendToken(address token, address to, uint256 amount) internal {
        if (token == WETH) {
            IWETH(WETH).withdraw(amount);
            Address.sendValue(payable(to), amount);
        } else {
            SafeERC20.safeTransfer(IERC20(token), to, amount);
        }
    }

    function sendToken(address token, address to, uint256 amount) external {
        require(msg.sender == address(this), "Not allowed");
        _sendToken(token, to, amount);
    }

    function _trySendToken(address token, address to, uint256 amount) internal returns (bool ok, bytes memory reason) {
        try this.sendToken(token, to, amount) {
            return (true, bytes(""));
        } catch (bytes memory err) {
            return (false, err);
        }
    }

    function _swapForQuote(address to, uint256 amountToken) internal returns (uint256) {
        _swapping = true;
        _approve(address(this), TOKEN_HELPER_5, amountToken);
        uint256 amountQuote = ITokenHelper(TOKEN_HELPER_5).swapForQuote(to, amountToken);
        _swapping = false;
        return amountQuote;
    }

    function _swapForToken(address to, uint256 amountQuote) internal returns (uint256) {
        _swapping = true;
        SafeERC20.forceApprove(IERC20(quote), TOKEN_HELPER_5, amountQuote);
        uint256 amountToken = ITokenHelper(TOKEN_HELPER_5).swapForToken(to, amountQuote);
        _swapping = false;
        return amountToken;
    }

    function swapForToken(address to, uint256 amountQuote) external returns (uint256) {
        require(msg.sender == address(this), "Not allowed");
        return _swapForToken(to, amountQuote);
    }

    function _trySwapForToken(address to, uint256 amountQuote)
        internal returns (bool ok, uint256 amountToken, bytes memory reason) {
        try this.swapForToken(to, amountQuote) returns (uint256 amountOut) {
            return (true, amountOut, bytes(""));
        } catch (bytes memory err) {
            return (false, 0, err);
        }
    }

    function _addLiquidity(uint256 amountQuote) internal {
        _swapping = true;
        SafeERC20.forceApprove(IERC20(quote), TOKEN_HELPER_5, amountQuote);
        ITokenHelper(TOKEN_HELPER_5).addLiquidityWithQuote(amountQuote);
        _swapping = false;
    }

    function addLiquidity(uint256 amountQuote) external {
        require(msg.sender == address(this), "Not allowed");
        _addLiquidity(amountQuote);
    }

    function _tryAddLiquidity(uint256 amountQuote) internal returns (bool ok, bytes memory reason) {
        try this.addLiquidity(amountQuote) {
            return (true, bytes(""));
        } catch (bytes memory err) {
            return (false, err);
        }
    }

    function _sendFeeToFounder() internal {
        if (feeToFounder == 0) return;
        uint256 amountQuote = feeToFounder;
        feeToFounder = 0;
        (bool ok, bytes memory reason) = _trySendToken(quote, founder, amountQuote);
        if (ok) {
            feeFounder += amountQuote;
        } else {
            feeToFounder = amountQuote;
        }
    }

    function _burnToken() internal {
        if (feeToBurn == 0) return;
        uint256 amountQuote = feeToBurn;
        feeToBurn = 0;
        (bool ok, uint256 amountToken, bytes memory reason) = _trySwapForToken(DEAD, amountQuote);
        if (ok) {
            feeBurned += amountQuote;
            tokenBurned += amountToken;
        } else {
            feeToBurn = amountQuote;
        }
    }

    function _addLiquidity() internal {
        if (feeToLiquidity == 0) return;
        uint256 amountQuote = feeToLiquidity;
        feeToLiquidity = 0;
        (bool ok, bytes memory reason) = _tryAddLiquidity(amountQuote);
        if (ok) {
            feeLiquidity += amountQuote;
        } else {
            feeToLiquidity = amountQuote;
        }
    }

    function sendFee(uint256 amount) public {
        require(msg.sender == Addresses.TOKEN_MANAGER_2, "Not allowed");
        feeAccumulated += amount;
    }

    function postMigrate() public {
        require(_mode == MODE_NORMAL, "");
        require(msg.sender == Addresses.TOKEN_MANAGER_2, "Not allowed");
        _burnToken();
        _addLiquidity();
    }

    receive() external payable {}
}