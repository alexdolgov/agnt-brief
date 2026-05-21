// SPDX-License-Identifier: MIT
pragma solidity =0.8.30;

import { IERC165 } from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import { ITricootFlashLoanPlugin } from "./interfaces/ITricootFlashLoanPlugin.sol";
import { ITricootSwapPlugin } from "./interfaces/ITricootSwapPlugin.sol";
import { ITricootStructs as ICS } from "./interfaces/ITricootStructs.sol";
import { ITricootAlerts as ICA } from "./interfaces/ITricootAlerts.sol";
import { ITricootEvents as ICE } from "./interfaces/ITricootEvents.sol";

/**
 * @title ArbitrageFoundation
 * @notice Flash loan arbitrage executor for Base DEXes
 * @dev Executes: Flash Loan → Buy DEX A → Sell DEX B → Repay → Profit
 */
contract ArbitrageFoundation is ReentrancyGuard {
    using SafeERC20 for IERC20;

    /// @notice Magic byte to identify valid plugin calls
    bytes1 constant PLUGIN_MAGIC = 0x01;

    /// @notice Transient storage offsets (32-byte aligned)
    uint16 internal constant LOAN_PLUGIN_OFFSET = 0x020;
    uint16 internal constant BUY_DEX_OFFSET = 0x040;
    uint16 internal constant SELL_DEX_OFFSET = 0x060;
    uint16 internal constant TOKEN_IN_OFFSET = 0x80;
    uint16 internal constant TOKEN_OUT_OFFSET = 0x0A0;
    uint16 internal constant AMOUNT_OFFSET = 0x0C0;
    uint16 internal constant USER_OFFSET = 0x0E0;
    uint16 internal constant MIN_PROFIT_OFFSET = 0x100;

    /// @notice Storage slot for transient data
    bytes32 internal constant SLOT_ARBITRAGE = bytes32(uint256(keccak256("ArbitrageFoundation.storage")) - 1);

    /// @notice Treasury for protocol fees
    address public immutable treasury;

    /// @notice Protocol fee in basis points (e.g., 2000 = 20%)
    uint16 public immutable protocolFeeBps;

    /// @notice Mapping of plugin configurations
    mapping(bytes32 => bytes) public plugins;

    event ArbitrageExecuted(
        address indexed user,
        address indexed tokenIn,
        address indexed tokenOut,
        uint256 amountIn,
        uint256 profit,
        uint256 protocolFee
    );

    receive() external payable {}

    /**
     * @notice Fallback to handle flash loan callback
     * @dev Called by flash loan provider during callback
     */
    fallback() external payable {
        (
            address loanPlugin,
            address buyDex,
            address sellDex,
            IERC20 tokenIn,
            IERC20 tokenOut,
            uint256 amount,
            address user,
            uint256 minProfit
        ) = _tload();

        // Decode callback data
        ICS.CallbackData memory data = _callback(loanPlugin, msg.data);

        // Execute arbitrage
        _executeArbitrage(
            loanPlugin,
            buyDex,
            sellDex,
            tokenIn,
            tokenOut,
            amount,
            data.debt,
            data.fee,
            data.flp,
            user,
            minProfit,
            data.swapData
        );
        bytes memory hook = ITricootFlashLoanPlugin(loanPlugin).hook();
        assembly {
            return(add(hook, 32), mload(hook))
        }
    }

    constructor(ICS.Plugin[] memory _plugins, address _treasury, uint16 _protocolFeeBps) payable {
        require(_treasury != address(0), "Invalid treasury");
        require(_protocolFeeBps <= 10000, "Fee too high"); // Max 100%

        treasury = _treasury;
        protocolFeeBps = _protocolFeeBps;

        bytes4 pluginSelector;

        for (uint256 i = 0; i < _plugins.length; ++i) {
            ICS.Plugin memory plugin = _plugins[i];

            if (IERC165(plugin.endpoint).supportsInterface(type(ITricootFlashLoanPlugin).interfaceId)) {
                pluginSelector = ITricootFlashLoanPlugin(plugin.endpoint).CALLBACK_SELECTOR();
            } else if (IERC165(plugin.endpoint).supportsInterface(type(ITricootSwapPlugin).interfaceId)) {
                pluginSelector = ITricootSwapPlugin(plugin.endpoint).SWAP_SELECTOR();
            } else {
                revert("Unknown plugin");
            }

            bytes32 key = keccak256(abi.encodePacked(plugin.endpoint, pluginSelector));
            plugins[key] = abi.encodePacked(PLUGIN_MAGIC, plugin.config);

            emit ICE.PluginAdded(plugin.endpoint, pluginSelector, key);
        }
    }

    /**
     * @notice Execute flash loan arbitrage
     * @param loanPlugin Flash loan provider plugin address
     * @param buyDex DEX to buy from (cheaper price)
     * @param sellDex DEX to sell to (higher price)
     * @param tokenIn Token to start with (e.g., USDC)
     * @param tokenOut Token to arbitrage (e.g., ETH)
     * @param amount Amount of tokenIn to use
     * @param minProfit Minimum profit required (in tokenIn)
     * @param buyData Swap data for buy DEX
     * @param sellData Swap data for sell DEX
     */
    function executeArbitrage(
        address loanPlugin,
        address buyDex,
        address sellDex,
        IERC20 tokenIn,
        IERC20 tokenOut,
        uint256 amount,
        uint256 minProfit,
        bytes calldata buyData,
        bytes calldata sellData
    ) external nonReentrant {
        require(loanPlugin != address(0) && buyDex != address(0) && sellDex != address(0), "Invalid addresses");
        require(address(tokenIn) != address(tokenOut), "Same tokens");
        require(amount > 0 && minProfit > 0, "Invalid amounts");

        // Store params in transient storage
        _tstore(loanPlugin, buyDex, sellDex, tokenIn, tokenOut, amount, msg.sender, minProfit);

        // Initiate flash loan
        _loan(
            loanPlugin,
            ICS.CallbackData({
                debt: amount,
                fee: 0, // Will be set by plugin
                flp: address(0), // Will be set by plugin
                asset: tokenIn,
                swapData: abi.encode(buyData, sellData)
            })
        );
    }

   function _executeArbitrage(
        address loanPlugin,
        address buyDex,
        address sellDex,
        IERC20 tokenIn,
        IERC20 tokenOut,
        uint256 amountIn,
        uint256 loanAmount,
        uint256 loanFee,
        address flp,
        address user,
        uint256 minProfit,
        bytes memory swapDataEncoded
    ) internal {
        // Verify we received the flash loan tokens
        require(tokenIn.balanceOf(address(this)) >= loanAmount, "Flash loan not received");
        
        // Execute swaps and get amount back
        uint256 amountBack = _executeSwaps(
            buyDex,
            sellDex,
            tokenIn,
            tokenOut,
            amountIn,
            swapDataEncoded
        );
        
        // Calculate repayment and profit
        uint256 grossProfit;
        unchecked {
            uint256 repayAmount = loanAmount + loanFee;
            require(amountBack >= repayAmount, "Insufficient output");
            
            grossProfit = amountBack - repayAmount;
            require(grossProfit >= minProfit, "Profit too low");
            
            // Repay flash loan
            _repay(loanPlugin, flp, tokenIn, repayAmount);
        }

        // Distribute profits
        _distributeProfits(tokenIn, user, amountIn, grossProfit);
    }

    /**
     * @notice Execute buy and sell swaps
     * @return amountBack Amount received from sell swap
     */
    function _executeSwaps(
        address buyDex,
        address sellDex,
        IERC20 tokenIn,
        IERC20 tokenOut,
        uint256 amountIn,
        bytes memory swapDataEncoded
    ) internal returns (uint256 amountBack) {
        (bytes memory buyData, bytes memory sellData) = abi.decode(
            swapDataEncoded,
            (bytes, bytes)
        );

        // Step 1: Buy tokenOut on cheaper DEX
        require(_swap(buyDex, tokenIn, tokenOut, amountIn, buyData) > 0, "Buy failed");

        // Step 2: Sell tokenOut on expensive DEX
        amountBack = _swap(sellDex, tokenOut, tokenIn, tokenOut.balanceOf(address(this)), sellData);
    }
    /**
     * @notice Distribute protocol fees and user profits
     */
    function _distributeProfits(
        IERC20 tokenIn,
        address user,
        uint256 amountIn,
        uint256 grossProfit
    ) internal {
        uint256 protocolFee = (grossProfit * protocolFeeBps) / 10000;
        
        if (protocolFee > 0) {
            tokenIn.safeTransfer(treasury, protocolFee);
        }
        
        unchecked {
            uint256 netProfit = grossProfit - protocolFee;
            if (netProfit > 0) {
                tokenIn.safeTransfer(user, netProfit);
            }

            emit ArbitrageExecuted(user, address(tokenIn), address(0), amountIn, netProfit, protocolFee);
        }
    }

    /**
     * @notice Execute token swap via DEX plugin
     * @param dexPlugin DEX plugin address
     * @param srcToken Source token
     * @param dstToken Destination token
     * @param amount Amount to swap
     * @param swapData Encoded swap parameters
     * @return amountOut Amount received
     */
    function _swap(
        address dexPlugin,
        IERC20 srcToken,
        IERC20 dstToken,
        uint256 amount,
        bytes memory swapData
    ) internal returns (uint256 amountOut) {
        require(dexPlugin != address(0), "Unknown plugin");

        (bool ok, bytes memory data) = address(dexPlugin).delegatecall(
            abi.encodeWithSelector(
                ITricootSwapPlugin.swap.selector,
                srcToken,
                dstToken,
                amount,
                _config(dexPlugin, ITricootSwapPlugin.SWAP_SELECTOR.selector),
                swapData
            )
        );
        _catch(ok);

        (amountOut) = abi.decode(data, (uint256));
    }

    /**
     * @notice Initiate flash loan
     */
    function _loan(address loanPlugin, ICS.CallbackData memory data) internal {
        require(loanPlugin != address(0), "Unknown plugin");
        (bool ok, ) = loanPlugin.delegatecall(
            abi.encodeWithSelector(
                ITricootFlashLoanPlugin.loan.selector,
                data,
                _config(loanPlugin, ITricootFlashLoanPlugin.CALLBACK_SELECTOR.selector)
            )
        );
        _catch(ok);
    }

    /**
     * @notice Repay flash loan
     */
    function _repay(address loanPlugin, address flp, IERC20 asset, uint256 amount) internal {
        require(loanPlugin != address(0), "Unknown plugin");
        (bool ok, ) = loanPlugin.delegatecall(
            abi.encodeWithSelector(ITricootFlashLoanPlugin.repayFlashLoan.selector, flp, asset, amount)
        );
        _catch(ok);
    }

    /**
     * @notice Handle flash loan callback
     */
    function _callback(address loanPlugin, bytes calldata data) internal returns (ICS.CallbackData memory) {
        require(loanPlugin != address(0), "Unknown plugin");
        (bool ok, bytes memory payload) = loanPlugin.delegatecall(data);
        _catch(ok);
        return abi.decode(payload, (ICS.CallbackData));
    }

    /**
     * @notice Get plugin configuration
     */
    function _config(address plugin, bytes4 selector) internal view returns (bytes memory config) {
        (bool ok, bytes memory data) = plugin.staticcall(abi.encodeWithSelector(selector));
        if (!ok) {
            revert("Unknown plugin");
        }

        assembly {
            selector := mload(add(data, 32))
        }
        require(selector != bytes4(0), "Unknown plugin");

        bytes memory configWithMagic = plugins[keccak256(abi.encodePacked(plugin, selector))];
        require(configWithMagic.length > 0, "Unknown plugin");
        require(configWithMagic[0] == PLUGIN_MAGIC, "Unknown plugin");

        assembly {
            let len := mload(configWithMagic)
            config := add(configWithMagic, 1)
            mstore(config, sub(len, 1))
        }
    }

    /**
     * @notice Handle failed calls
     */
    function _catch(bool ok) internal pure {
        if (!ok) {
            assembly {
                let size := returndatasize()
                returndatacopy(0, 0, size)
                revert(0, size)
            }
        }
    }

    /**
     * @notice Store params in transient storage
     */
    function _tstore(
        address loanPlugin,
        address buyDex,
        address sellDex,
        IERC20 tokenIn,
        IERC20 tokenOut,
        uint256 amount,
        address user,
        uint256 minProfit
    ) internal {
        bytes32 slot = SLOT_ARBITRAGE;
        assembly {
            tstore(add(slot, LOAN_PLUGIN_OFFSET), loanPlugin)
            tstore(add(slot, BUY_DEX_OFFSET), buyDex)
            tstore(add(slot, SELL_DEX_OFFSET), sellDex)
            tstore(add(slot, TOKEN_IN_OFFSET), tokenIn)
            tstore(add(slot, TOKEN_OUT_OFFSET), tokenOut)
            tstore(add(slot, AMOUNT_OFFSET), amount)
            tstore(add(slot, USER_OFFSET), user)
            tstore(add(slot, MIN_PROFIT_OFFSET), minProfit)
        }
    }

    /**
     * @notice Load params from transient storage
     */
    function _tload()
        internal
        returns (
            address loanPlugin,
            address buyDex,
            address sellDex,
            IERC20 tokenIn,
            IERC20 tokenOut,
            uint256 amount,
            address user,
            uint256 minProfit
        )
    {
        bytes32 slot = SLOT_ARBITRAGE;
        assembly {
            loanPlugin := tload(add(slot, LOAN_PLUGIN_OFFSET))
            buyDex := tload(add(slot, BUY_DEX_OFFSET))
            sellDex := tload(add(slot, SELL_DEX_OFFSET))
            tokenIn := tload(add(slot, TOKEN_IN_OFFSET))
            tokenOut := tload(add(slot, TOKEN_OUT_OFFSET))
            amount := tload(add(slot, AMOUNT_OFFSET))
            user := tload(add(slot, USER_OFFSET))
            minProfit := tload(add(slot, MIN_PROFIT_OFFSET))

            // Clear storage
            tstore(add(slot, LOAN_PLUGIN_OFFSET), 0)
            tstore(add(slot, BUY_DEX_OFFSET), 0)
            tstore(add(slot, SELL_DEX_OFFSET), 0)
            tstore(add(slot, TOKEN_IN_OFFSET), 0)
            tstore(add(slot, TOKEN_OUT_OFFSET), 0)
            tstore(add(slot, AMOUNT_OFFSET), 0)
            tstore(add(slot, USER_OFFSET), 0)
            tstore(add(slot, MIN_PROFIT_OFFSET), 0)
        }
    }

    /**
     * @notice Emergency rescue for stuck tokens
     */
    function rescue(IERC20 token) external {
        require(msg.sender == treasury, "Not treasury");
        token.safeTransfer(treasury, token.balanceOf(address(this)));
    }
}
