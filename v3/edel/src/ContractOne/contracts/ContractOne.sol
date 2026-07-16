// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";


/// @title WETH Interface (minimal)
interface IWETH {
    /// @notice Deposit ETH to receive WETH
    function deposit() external payable;
    /// @notice Transfer WETH to another address
    /// @param to Recipient address
    /// @param value Amount of WETH to transfer
    /// @return success Whether the transfer was successful
    function transfer(address to, uint256 value) external returns (bool);
    /// @notice Withdraw ETH from WETH
    /// @param amount Amount of WETH to withdraw
    function withdraw(uint256 amount) external;
    /// @notice Approve spender to transfer WETH
    /// @param spender Address to approve
    /// @param amount Amount to approve
    /// @return success Whether the approval was successful
    function approve(address spender, uint256 amount) external returns (bool);
}

/// @title Aerodrome Router Interface
/// @notice Interface for Aerodrome DEX router functionality on Base network
/// @dev Minimal interface required for liquidity pool operations
interface IAerodrome {
    /// @notice Represents a single swap route
    /// @param from The address of the input token
    /// @param to The address of the output token
    /// @param stable Whether to use the stable or volatile pool
    /// @param factory The factory address for the pool
    struct Route {
        address from;
        address to;
        bool stable;
        address factory;
    }

    /// @notice Add liquidity to an Aerodrome pool
    /// @param tokenA First token in the pair
    /// @param tokenB Second token in the pair
    /// @param stable Whether the pool is stable or volatile
    /// @param amountADesired Desired amount of tokenA
    /// @param amountBDesired Desired amount of tokenB
    /// @param amountAMin Minimum amount of tokenA (slippage protection)
    /// @param amountBMin Minimum amount of tokenB (slippage protection)
    /// @param to Address that will receive LP tokens
    /// @param deadline Timestamp after which the transaction will revert
    /// @return amountA Amount of tokenA actually added
    /// @return amountB Amount of tokenB actually added
    /// @return liquidity Amount of LP tokens minted
    function addLiquidity(
        address tokenA,
        address tokenB,
        bool stable,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB, uint256 liquidity);

    /// @notice Swaps an exact amount of tokens for another token through the path provided
    /// @param amountIn The amount of input tokens to send
    /// @param amountOutMin The minimum amount of output tokens to receive
    /// @param routes The array of routes to use for the swap
    /// @param to The address to receive the output tokens
    /// @param deadline The timestamp after which the transaction will revert
    /// @return amounts The amounts of tokens swapped at each hop
    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        Route[] calldata routes,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    /// @notice Swaps an exact amount of ETH for tokens
    /// @param amountOutMin The minimum amount of output tokens to receive
    /// @param routes The array of routes to use for the swap
    /// @param to The address to receive the output tokens
    /// @param deadline The timestamp after which the transaction will revert
    /// @return amounts The amounts of tokens swapped at each hop
    function swapExactETHForTokens(
        uint256 amountOutMin,
        Route[] calldata routes,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    /// @notice Swaps exact eth or tokens supporting fee on transfer
    /// @param amountOutMin The minimum amount of output tokens to receive
    /// @param routes The array of routes to use for the swap
    /// @param to The address to receive the output tokens
    /// @param deadline The timestamp after which the transaction will revert
    /// @return amounts The amounts of tokens swapped at each hop
    function swapExactETHForTokensSupportingFeeOnTransfer(
        uint256 amountOutMin,
        Route[] calldata routes,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);
}

/// @title Aerodrome Factory Interface
/// @notice Interface for creating and managing Aerodrome liquidity pools on Base network
/// @dev Minimal interface required for pool creation and querying
interface IAerodromeFactory {
    /// @notice Create a new liquidity pool
    /// @param tokenA First token in the pair
    /// @param tokenB Second token in the pair
    /// @param stable Whether to create a stable or volatile pool
    /// @return pair Address of the created pool
    function createPool(address tokenA, address tokenB, bool stable) external returns (address pair);
    /// @notice Get the address of an existing pool
    /// @param tokenA First token in the pair
    /// @param tokenB Second token in the pair
    /// @param stable Whether the pool is stable or volatile
    /// @return pool Address of the pool (zero address if it doesn't exist)
    function getPool(address tokenA, address tokenB, bool stable) external view returns (address);
}

/// @title Aerodrome Pool Interface
/// @notice Minimal interface for Aerodrome pool fee claiming
interface IAerodromePool {
    /// @notice Claims accumulated fees from the pool
    function claimFees() external returns (uint256, uint256);
    /// @notice Returns the token0 address
    function token0() external view returns (address);
    /// @notice Returns the token1 address
    function token1() external view returns (address);
    /// @notice Returns the reserves of the pool
    function getReserves() external view returns (uint256, uint256, uint256);
    /// @notice Returns the stability of the pool
    function stable() external view returns (bool);
    /// @notice Returns the address of the factory
}

/// @title Dynamic Levy Token with Liquidity Management
/// @notice Implementation of an ERC20 token with dynamic levy reduction and automated liquidity pool management
/// @dev Token implements a levy system that reduces over time and includes liquidity pool creation.
/// The levy starts at an initial rate and reduces by a fixed percentage after an initial period.
/// Levy reduction occurs in steps: after an initial duration, the levy decreases at set intervals until it reaches zero.
contract ContractOne is ERC20, ERC20Permit, Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;
          
    uint256 private _totalSupply;

    // --- Constants ---
    /// @dev Basis points denominator
    uint256 private constant BPS_DENOMINATOR = 10_000; 

    // --- Protocol wiring ---
    /// @dev WETH contract address
    address private immutable _WETH;
    /// @dev Aerodrome router address
    address private immutable _ROUTER;
    /// @dev Aerodrome factory address
    address private immutable _AERODROME_FACTORY;
    /// @dev Address of the token's liquidity pool (zero if not created)
    address public liquidityPool;

    // --- Levy schedule (bps) ---
    /// @dev Initial levy percentage in bps
    uint16 private immutable _initialLevyBps; 
    /// @dev Interval between levy reductions
    uint256 private immutable _levyReductionInterval; // blocks
    /// @dev Initial duration before levy reductions start
    uint256 private immutable _initialLevyDuration; // blocks
    /// @dev Levy reduction rate in bps per interval
    uint16 private immutable _levyReductionRateBps; // bps per interval
    /// @dev Deployment block number
    uint256 private immutable _deploymentBlock;
    /// @dev Levy reduction completion flag
    bool private _levyReductionComplete;

    // --- Allocation ---    
    /// @dev Percentage of total supply allocated to liquidity pool
    uint8 private immutable _lpAllocation; 

    // --- LP Token Recipient ---
    /// @dev Recipient of LP tokens upon liquidity pool creation
    address private _lpRecipient; 
    /// @dev Round-robin levy recipients
    address[] private _levyRecipients; // round-robin levy recipients
    /// @dev Round-robin cursor for levy recipients
    uint256 private _rrCursor; // round-robin cursor



    // --- Events ---
    /// @notice Emitted when levy reduction process completes
    event LevyReductionCompleted();
    /// @notice Emitted when LP tokens are transferred to the designated recipient
    /// @param amount The amount of LP tokens transferred
    event LPTokensTransferred(uint256 amount);
    
    
    /// @notice Struct containing all parameters needed for contract initialization
    /// @dev Used to avoid stack too deep errors in constructor
    struct InitParams {
        // Metadata (OZ ERC20 defaults to 18 decimals unless overridden)
        /// @notice Token name
        string name;
        /// @notice Token symbol
        string symbol;
        /// @notice Token decimals
        uint8 decimals; 
        /// @notice Token total supply
        uint256 totalSupply;
        /// @notice Initial levy percentage in basis points
        uint16 initialLevyBps; 
        /// @notice Levy reduction interval in blocks
        uint256 levyReductionInterval;
        /// @notice Initial levy duration in blocks
        uint256 initialLevyDuration; 
        /// @notice Levy reduction rate in basis points per interval
        uint16 levyReductionRateBps; 
        /// @notice Addresses receiving levy funds
        address[] levyRecipients; 
        /// @notice LP token recipient
        address lpRecipient; 
        /// @notice Percentage of total supply allocated to liquidity pool
        uint8 lpAllocation; // 100
        /// @notice WETH contract address
        address weth;
        /// @notice Aerodrome router address
        address router;
        /// @notice Aerodrome factory address
        address factory;
        /// @notice Owner address
        address owner;
    }

    constructor(
        InitParams memory params
    ) ERC20(params.name, params.symbol) ERC20Permit(params.name) Ownable(params.owner) {
        // --- Validation ---
        require(params.initialLevyBps <= BPS_DENOMINATOR, "Levy > 100%");
        require(params.lpAllocation > 0 && params.lpAllocation <= 100, "LP allocation 1-100%");
        require(params.weth != address(0), "Zero WETH");
        require(params.router != address(0), "Zero router");
        require(params.factory != address(0), "Zero factory");
        require(params.owner != address(0), "Zero owner");
        require(params.lpRecipient != address(0), "Zero LP recipient");

        uint256 n = params.levyRecipients.length;
        require(n > 0, "No levy recipients");
        for (uint256 i = 0; i < n; ) {
            require(params.levyRecipients[i] != address(0), "Zero levy recipient");
            unchecked {
                ++i;
            }
        }

        // Guardrail for schedule params
        require(
            params.levyReductionRateBps == 0 || params.levyReductionInterval > 0,
            "Interval must be > 0 when rate > 0"
        );

        // --- Wire state ---
        _initialLevyBps = params.initialLevyBps;
        _levyReductionInterval = params.levyReductionInterval;
        _initialLevyDuration = params.initialLevyDuration;
        _levyReductionRateBps = params.levyReductionRateBps;
        _deploymentBlock = block.number;

        _lpAllocation = params.lpAllocation;

        _WETH = params.weth;
        _ROUTER = params.router;
        _AERODROME_FACTORY = params.factory;

        _levyRecipients = params.levyRecipients;
        _lpRecipient = params.lpRecipient;

        _mint(address(this), params.totalSupply);
    }

    // ========= Helpers =========

    /// @notice Round-robin recipient selection.
    /// @dev Cycles through levy recipients in order.
    /// @return The next recipient address.    
    function _nextRecipient() private returns (address) {
        uint256 n = _levyRecipients.length;
        unchecked {
            address r = _levyRecipients[_rrCursor % n];
            _rrCursor++;
            return r;
        }
    }

    // ========= Liquidity Pool Creation =========

    /// @notice Creates a liquidity pool for the token with WETH pair, adds initial liquidity, sends all LP tokens to the lpRecipient
    /// @dev Creates a volatile pool on Aerodrome
    /// @param ethAmount Amount of ETH to add as initial liquidity
    /// @param maxSlippageBps Maximum allowed slippage in basis points (1 = 0.01%, max 1000 = 10%)
    function createLiquidityPool(uint256 ethAmount, uint16 maxSlippageBps) external payable nonReentrant {
        // --- Validations ---
        require(msg.value == ethAmount, "Incorrect ETH amount");
        require(liquidityPool == address(0), "LP already created");
        require(ethAmount > 0, "ETH amount must be > 0");
        require(maxSlippageBps > 0 && maxSlippageBps <= 1000, "Slippage 1-1000 bps");

        // Use all available tokens
        uint256 totalTokens = balanceOf(address(this));
        require(totalTokens > 0, "No tokens available");

        uint256 tokenAmount = (totalTokens * _lpAllocation) / 100;
        uint256 recipientAmount;
        unchecked {
            recipientAmount = totalTokens - tokenAmount;
        }

        // Send non-LP remainder to LP recipient (deterministic)
        if (recipientAmount > 0) {
            _transfer(address(this), _lpRecipient, recipientAmount);
        }

        uint256 minTokenAmount = Math.mulDiv(tokenAmount,BPS_DENOMINATOR - maxSlippageBps,BPS_DENOMINATOR);
        uint256 minEthAmount = Math.mulDiv(ethAmount,BPS_DENOMINATOR - maxSlippageBps,BPS_DENOMINATOR);

        _approve(address(this), _ROUTER, tokenAmount);

        address poolAddress = IAerodromeFactory(_AERODROME_FACTORY).getPool(address(this), _WETH, false);
        if (poolAddress == address(0)) {
            poolAddress = IAerodromeFactory(_AERODROME_FACTORY).createPool(address(this), _WETH, false);
            require(poolAddress != address(0), "Pool create failed");
        }
        // Record the LP token (pool) address for later interactions and AMM gating
        liquidityPool = poolAddress;
        
        IWETH(_WETH).deposit{value: ethAmount}();
        IWETH(_WETH).approve(_ROUTER, ethAmount);

        (uint256 amountTokenUsed, uint256 amountETHUsed, ) = IAerodrome(_ROUTER).addLiquidity(
            address(this),
            _WETH,
            false,
            tokenAmount,
            ethAmount,
            minTokenAmount,
            minEthAmount,
            address(this),
            block.timestamp + 1 hours
        );

        require(amountTokenUsed >= minTokenAmount && amountETHUsed >= minEthAmount, "Slippage exceeded");

        uint256 lpBalance = IERC20(liquidityPool).balanceOf(address(this));
        require(lpBalance > 0, "No LP tokens");
        IERC20(liquidityPool).safeTransfer(_lpRecipient, lpBalance);
        emit LPTokensTransferred(lpBalance);
    }



    // ========= Transfers (levy in bps; SWAP-ONLY) =========
    /// @notice Implementation of levy on transfers involving AMM pairs
    /// @dev Calculates and applies levy on swaps
    /// @dev No levy on mints, burns, or transfers
    /// @param from The sender address
    /// @param to The recipient address
    /// @param amount The amount being transferred
    function _update(address from, address to, uint256 amount) internal virtual override {
        if (from == address(0) || to == address(0)) {
            // mint or burn
            super._update(from, to, amount);
            return;
        }

        // Skip levy for internal contract flows
        if (from == address(this) || to == address(this)) {
            super._update(from, to, amount);
            return;
        }


        _updateLevyReductionStatus();
        uint256 levyBps = getCurrentLevyBps();

        
        bool isSwap = (from == liquidityPool || to == liquidityPool);


        if (
            levyBps > 0 
            && isSwap         
        ) {
            uint256 levyAmount = Math.mulDiv(amount, levyBps, BPS_DENOMINATOR);
            uint256 transferAmount;
            unchecked { transferAmount = amount - levyAmount; }

            address levyDst = _nextRecipient();
            super._update(from, levyDst, levyAmount);
            super._update(from, to, transferAmount);
        } else {
            super._update(from, to, amount);
        }
    }

    // ========= Levy Schedule (bps) =========
    /// @notice Update levy reduction completion status.
    /// @dev Called internally to finalize the levy reduction process.
    function _updateLevyReductionStatus() private {
        if (!_levyReductionComplete && getCurrentLevyBps() == 0) {
            _levyReductionComplete = true;
            emit LevyReductionCompleted();
        }
    }

    /// @notice Current levy in **bps** (0..10000).
    /// @dev Initial window holds, then reduction applies at the **start** of each interval.
    function getCurrentLevyBps() public view returns (uint16) {
        if (_levyReductionComplete) {
            return 0;
        }

        uint256 sinceDeploy = block.number - _deploymentBlock;
        if (sinceDeploy < _initialLevyDuration) {
            return _initialLevyBps;
        }

        // Start-of-interval semantics:
        // First block AFTER initial window => reductions = 1.
        uint256 blocksSince = sinceDeploy - _initialLevyDuration;
        uint256 reductions = _levyReductionInterval == 0 ? 0 : Math.ceilDiv(blocksSince + 1, _levyReductionInterval);

        // totalReduction = reductions * rateBps (clamped)
        uint256 totalReductionBps = reductions * uint256(_levyReductionRateBps);
        if (totalReductionBps >= _initialLevyBps) {
            return 0;
        }
        return SafeCast.toUint16(uint256(_initialLevyBps) - totalReductionBps);

    }

    

    // ========= Misc =========
    /// @notice Renounces ownership of the contract
    /// @dev Sets owner to address(0), making owner-only functions inaccessible
    /// @dev This action is irreversible
    function renounceOwnership() public override onlyOwner {
        super.renounceOwnership();
    }

    /// @notice Handles incoming ETH transfers
    /// @dev Only accepts ETH from WETH contract
    receive() external payable {
        require(msg.sender == _WETH, "Only accept ETH from WETH");
    }

    /// @notice Fallback function to reject unexpected calls
    /// @dev Reverts all unexpected function calls
    fallback() external payable {
        revert("Function not found");
    }
}
