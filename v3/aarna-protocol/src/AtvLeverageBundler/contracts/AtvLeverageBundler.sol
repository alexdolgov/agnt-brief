// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28; // 0.8.28+ has full codegen for transient state vars

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {OwnableDelayModule} from "./OwnableDelayModule.sol";
import {IAFiStorage} from "./IAFiStorage.sol";

interface IPLimitOrderType {
    enum OrderType {
        SY_FOR_PT,
        PT_FOR_SY,
        SY_FOR_YT,
        YT_FOR_SY
    }

    // Fixed-size order part with core information
    struct StaticOrder {
        uint256 salt;
        uint256 expiry;
        uint256 nonce;
        OrderType orderType;
        address token;
        address YT;
        address maker;
        address receiver;
        uint256 makingAmount;
        uint256 lnImpliedRate;
        uint256 failSafeRate;
    }

    struct FillResults {
        uint256 totalMaking;
        uint256 totalTaking;
        uint256 totalFee;
        uint256 totalNotionalVolume;
        uint256[] netMakings;
        uint256[] netTakings;
        uint256[] netFees;
        uint256[] notionalVolumes;
    }
}

struct Order {
    uint256 salt;
    uint256 expiry;
    uint256 nonce;
    IPLimitOrderType.OrderType orderType;
    address token;
    address YT;
    address maker;
    address receiver;
    uint256 makingAmount;
    uint256 lnImpliedRate;
    uint256 failSafeRate;
    bytes permit;
}

struct FillOrderParams {
    Order order;
    bytes signature;
    uint256 makingAmount;
}

interface IPLimitRouterCallback is IPLimitOrderType {
    function limitRouterCallback(
        uint256 actualMaking,
        uint256 actualTaking,
        uint256 totalFee,
        bytes memory data
    ) external returns (bytes memory);
}

interface IPLimitRouter is IPLimitOrderType {
    struct OrderStatus {
        uint128 filledAmount;
        uint128 remaining;
    }

    event OrderCanceled(address indexed maker, bytes32 indexed orderHash);

    event OrderFilledV2(
      bytes32 indexed orderHash,
      OrderType indexed orderType,
      address indexed YT,
      address token,
      uint256 netInputFromMaker,
      uint256 netOutputToMaker,
      uint256 feeAmount,
      uint256 notionalVolume,
      address maker,
      address taker
    );

    // event added on 2/1/2025
    event LnFeeRateRootsSet(address[] YTs, uint256[] lnFeeRateRoots);

    // @dev actualMaking, actualTaking are in the SY form
    function fill(
      FillOrderParams[] memory params,
      address receiver,
      uint256 maxTaking,
      bytes calldata optData,
      bytes calldata callback
    ) external returns (uint256 actualMaking, uint256 actualTaking, uint256 totalFee, bytes memory callbackReturn);

    function feeRecipient() external view returns (address);

    function hashOrder(Order memory order) external view returns (bytes32);

    function cancelSingle(Order calldata order) external;

    function cancelBatch(Order[] calldata orders) external;

    function orderStatusesRaw(
        bytes32[] memory orderHashes
    ) external view returns (uint256[] memory remainingsRaw, uint256[] memory filledAmounts);

    function orderStatuses(
        bytes32[] memory orderHashes
    ) external view returns (uint256[] memory remainings, uint256[] memory filledAmounts);

    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function simulate(address target, bytes calldata data) external payable;

    function WNATIVE() external view returns (address);

    function _checkSig(
        Order memory order,
        bytes memory signature
    )
        external
        view
        returns (
            bytes32,
            /*orderHash*/
            uint256,
            /*remainingMakerAmount*/
            uint256
        ); /*filledMakerAmount*/

    /* --- Deprecated events --- */

    // deprecate on 7/1/2024, prior to official launch
    event OrderFilled(
        bytes32 indexed orderHash,
        OrderType indexed orderType,
        address indexed YT,
        address token,
        uint256 netInputFromMaker,
        uint256 netOutputToMaker,
        uint256 feeAmount,
        uint256 notionalVolume
    );
}
 
enum SwapType {
    NONE,
    KYBERSWAP,
    ODOS,
    // ETH_WETH not used in Aggregator
    ETH_WETH,
    OKX,
    ONE_INCH,
    RESERVE_1,
    RESERVE_2,
    RESERVE_3,
    RESERVE_4,
    RESERVE_5
}

struct SwapData {
    SwapType swapType;
    address extRouter;
    bytes extCalldata;
    bool needScale;
}

struct TokenInput {
    address tokenIn;
    uint256 netTokenIn;
    address tokenMintSy;
    address pendleSwap;
    SwapData swapData;
}

struct TokenOutput {
    address tokenOut;
    uint256 minTokenOut;
    address tokenRedeemSy;
    address pendleSwap;
    SwapData swapData;
}

struct LimitOrderData {
    address limitRouter;
    uint256 epsSkipMarket;
    FillOrderParams[] normalFills;
    FillOrderParams[] flashFills;
    bytes optData;
}

struct ApproxParams {
    uint256 guessMin;
    uint256 guessMax;
    uint256 guessOffchain;
    uint256 maxIteration;
    uint256 eps;
}

interface IPendleMarket {
    function expiry() external view returns (uint256);
    function readTokens() external view returns (address _PT, address _YT, address _SY);
}

/*//////////////////////////////////////////////////////////////
                        GENERIC MULTICALL TYPES
//////////////////////////////////////////////////////////////*/

/// @notice Struct containing all the data needed to make a call.
struct Call {
    address to;
    bytes data;
    uint256 value;
    bool skipRevert;
    /// @dev If nonzero, the bundler expects exactly one reenter()
    ///      from `to` with msg.data[4:] hashing to this value.
    bytes32 callbackHash;
}

/// @title Leverage Bundler Interface
interface ILeverageBundler {
    function multicall(Call[] calldata) external payable;
    function reenterHash() external view returns (bytes32);
    function initiator() external view returns (address);
}

/*//////////////////////////////////////////////////////////////
                      LEVERAGE BUNDLER (TRANSIENT)
//////////////////////////////////////////////////////////////*/

/// @title Leverage Bundler - Morpho Style Multicall
/// @notice Executes multiple calls atomically for leverage operations.
/// @dev Uses EIP-1153 transient storage for cheap, tx-scoped state.
///      NOTE: public getters for transient vars will read as zero when
///      called off-chain (new transaction) – this is expected.
contract AtvLeverageBundler is ILeverageBundler, OwnableDelayModule {
    address public transient initiator;
    bytes32 public transient reenterHash;

    mapping(address => bool) private authorised;

    struct PtSwapParams {
        ApproxParams approxParams;
        uint256 minPtOut;
        uint256 minTokenOut;
    }
    
    struct AddLiquidityParams {
        ApproxParams approxParams;
        uint256 minLpOut;
    }

    address public afiStorage;

    bytes4 public addLiquiditySelector;
    bytes4 public removeLiquiditySelector;
    bytes4 public swapPtForUnderlyingSelector;
    bytes4 public swapUnderlyingForPtSelector;
    bytes4 public redeemPostMaturityLpSelector;
    bytes4 public redeemPostMaturityPtSelector;


    event SetStorage(address _afiStorage);
    event CallExecuted(uint256 indexed index, address indexed to, uint256 value, bool success);
    
    error AlreadyInitiated();
    error EmptyBundle();
    error IncorrectReenterHash();
    error MissingExpectedReenter();
    error LowLevelCallFailed();

    receive() external payable {}

    event Authorised(address indexed account, bool status);

    modifier onlyAuthorised() {
        require(authorised[msg.sender], "AtvLeverageBundler: Not Authorised");
        _;
    }

    constructor() {
        addLiquiditySelector = 0x12599ac6;
        removeLiquiditySelector = 0x60da0860;
        swapPtForUnderlyingSelector = 0x594a88cc;
        swapUnderlyingForPtSelector = 0xc81f847a;
        redeemPostMaturityLpSelector = 0x60da0860;
        redeemPostMaturityPtSelector = 0x47f1de22;
    }

    function addressZero(address add1) internal pure {
        require(add1 != address(0), "ATVB03");
    }

    function multicall(Call[] calldata bundle) external onlyAuthorised payable {
        if (initiator != address(0)) revert AlreadyInitiated();
        if (bundle.length == 0) revert EmptyBundle();
        initiator = msg.sender;
        _multicall(bundle);
        initiator = address(0);
    }

    function _multicall(Call[] calldata bundle) internal {
        unchecked {
            for (uint256 i = 0; i < bundle.length; ++i) {
                address to = bundle[i].to;
                bytes32 cbHash = bundle[i].callbackHash;

                reenterHash = cbHash == bytes32(0)
                    ? bytes32(0)
                    : keccak256(bytes.concat(bytes20(to), cbHash));

                (bool success, bytes memory ret) = to.call{value: bundle[i].value}(bundle[i].data);

                if (!bundle[i].skipRevert && !success) _lowLevelRevert(ret);
                if (reenterHash != bytes32(0)) revert MissingExpectedReenter();

                emit CallExecuted(i, to, bundle[i].value, success);
            }
        }
    }

    function _lowLevelRevert(bytes memory returnData) internal pure {
        if (returnData.length > 0) {
            assembly {
                let n := mload(returnData)
                revert(add(returnData, 0x20), n)
            }
        } else {
            revert LowLevelCallFailed();
        }
    }

    function setStorage(address _afiStorage) external onlyOwner {
        addressZero(_afiStorage);
        afiStorage = _afiStorage;
        emit SetStorage(_afiStorage);
    }

    function validateAndConstructPendleCallData(
        address tokenIn,
        uint256 amountIn,
        address tokenOut,
        bool isRemoval,
        address vault,
        bytes calldata apiCallData
    ) external view returns (bytes memory callData, uint256 minExpectedAmount) {
        require(apiCallData.length >= 4, "Invalid API data");
        bytes4 selector = bytes4(apiCallData[:4]);
        
        // Route to appropriate handler based on selector
        if (selector == redeemPostMaturityLpSelector) {
            // LP redemption: tokenIn is LP token, tokenOut is SY
            (callData, minExpectedAmount) = _handlePostMaturityLpRedemption(
                amountIn, tokenIn, tokenOut, vault, apiCallData
            );
        } else if (selector == redeemPostMaturityPtSelector) {
            // PT redemption: tokenIn is PT, tokenOut is SY
            (callData, minExpectedAmount) = _handlePostMaturityPtRedemption(
                amountIn, tokenIn, tokenOut, vault, apiCallData
            );
        } else if (selector == addLiquiditySelector) {
            // Add liquidity: tokenIn is SY/underlying, tokenOut is LP token
            (callData, minExpectedAmount) = _handleAddLiquidity(
                amountIn, tokenIn, tokenOut, vault, apiCallData
            );
        } else if (selector == removeLiquiditySelector) {
            // Remove liquidity: tokenIn is LP token, tokenOut is SY/underlying
            (callData, minExpectedAmount) = _handleRemoveLiquidity(
                amountIn, tokenIn, tokenOut, vault, apiCallData
            );
        } else if (selector == swapUnderlyingForPtSelector) {
            // Swap SY/underlying for PT: tokenIn is SY/underlying, tokenOut is PT
            (callData, minExpectedAmount) = _handleUnderlyingToPt(
                amountIn, tokenIn, tokenOut, vault, apiCallData
            );
        } else if (selector == swapPtForUnderlyingSelector) {
            // Swap PT for SY/underlying: tokenIn is PT, tokenOut is SY/underlying
            (callData, minExpectedAmount) = _handlePtToUnderlying(
                amountIn, tokenIn, tokenOut, vault, apiCallData
            );
        } else {
            revert("Invalid selector");
        }
    }

    function _handleAddLiquidity(
        uint256 amountIn,
        address tokenIn,   // Can be raw underlying or SY
        address tokenOut,  // LP token expected
        address vault,
        bytes calldata apiCallData
    ) private view returns (bytes memory callData, uint256 minExpectedAmount) {
        // Decode API call data
        (
            address receiver,
            address market,
            uint256 minLpOut,
            ApproxParams memory approxParams,
            TokenInput memory input,
            LimitOrderData memory limitData
        ) = abi.decode(
            apiCallData[4:],
            (address, address, uint256, ApproxParams, TokenInput, LimitOrderData)
        );
        require(receiver == vault, "ATVB04: Receiver must be vault");

        // Validate input token matches (could be underlying or SY)
        require(input.tokenIn == tokenIn, "TokenIn mismatch");
        
        // Validate output token (LP) matches the market
        if (tokenOut != address(0)) {
            require(market == tokenOut, "TokenOut (LP) mismatch");
        }
        
        require(amountIn >= input.netTokenIn, "Amount mismatch");
        
        // Update input with our amount
        input.netTokenIn = amountIn;
        
        // Reconstruct with vault as receiver
        callData = abi.encodePacked(
            addLiquiditySelector,
            abi.encode(
                vault,          // Always vault as receiver
                market,
                minLpOut,
                approxParams,
                input,
                limitData
            )
        );
        
        minExpectedAmount = minLpOut;
    }

    function _handleRemoveLiquidity(
        uint256 amountIn,
        address tokenIn,   // LP token
        address tokenOut,  // Can be SY or underlying
        address vault,
        bytes calldata apiCallData
    ) private view returns (bytes memory callData, uint256 minExpectedAmount) {
        (
            address receiver,
            address market,
            uint256 netLpToRemove,
            TokenOutput memory output,
            LimitOrderData memory limitData
        ) = abi.decode(
            apiCallData[4:],
            (address, address, uint256, TokenOutput, LimitOrderData)
        );
        require(receiver == vault, "ATVB05: Receiver must be vault");

        // Validate input token (LP) matches the market
        if (tokenIn != address(0)) {
            require(market == tokenIn, "TokenIn (LP) mismatch");
        }
        
        // Validate output token matches
        require(output.tokenOut == tokenOut, "TokenOut mismatch");
        
        require(amountIn >= netLpToRemove, "Amount mismatch");
        
        callData = abi.encodePacked(
            removeLiquiditySelector,
            abi.encode(
                vault,
                market,
                amountIn,  // Use our amount
                output,
                limitData
            )
        );
        
        minExpectedAmount = output.minTokenOut;
    }

    function _handleUnderlyingToPt(
        uint256 amountIn,
        address tokenIn,   // Can be underlying or SY
        address tokenOut,  // PT token expected
        address vault,
        bytes calldata apiCallData
    ) private view returns (bytes memory callData, uint256 minExpectedAmount) {
        (
            address receiver,
            address market,
            uint256 minPtOut,
            ApproxParams memory approxParams,
            TokenInput memory input,
            LimitOrderData memory limitData
        ) = abi.decode(
            apiCallData[4:],
            (address, address, uint256, ApproxParams, TokenInput, LimitOrderData)
        );
        require(receiver == vault, "ATVB07: Receiver must be vault");

        // Validate input token matches
        require(input.tokenIn == tokenIn, "TokenIn mismatch");
        
        // Validate PT token output
        if (tokenOut != address(0)) {
            (, address _PT, ) = IPendleMarket(market).readTokens();
            require(_PT == tokenOut, "TokenOut (PT) mismatch");  // PT is second parameter
        }
        
        require(amountIn >= input.netTokenIn, "Amount mismatch");
        
        // Update input with our amount
        input.netTokenIn = amountIn;
        
        callData = abi.encodePacked(
            swapUnderlyingForPtSelector,
            abi.encode(
                vault,
                market,
                minPtOut,
                approxParams,
                input,
                limitData
            )
        );
        
        minExpectedAmount = minPtOut;
    }

    function _handlePtToUnderlying(
        uint256 amountIn,
        address tokenIn,   // PT token
        address tokenOut,  // Can be SY or underlying
        address vault,
        bytes calldata apiCallData
    ) private view returns (bytes memory callData, uint256 minExpectedAmount) {
        (
            address receiver,
            address market,
            uint256 exactPtIn,
            TokenOutput memory output,
            LimitOrderData memory limitData
        ) = abi.decode(
            apiCallData[4:],
            (address, address, uint256, TokenOutput, LimitOrderData)
        );
        require(receiver == vault, "ATVB06: Receiver must be vault");

        // Validate PT token input
        if (tokenIn != address(0)) {
            (, address _PT, ) = IPendleMarket(market).readTokens();
            require(_PT == tokenIn, "TokenIn (PT) mismatch");
        }
        
        // Validate output token matches
        require(output.tokenOut == tokenOut, "TokenOut mismatch");
        
        require(amountIn >= exactPtIn, "Amount mismatch");
        
        callData = abi.encodePacked(
            swapPtForUnderlyingSelector,
            abi.encode(
                vault,
                market,
                amountIn,  // Use our amount
                output,
                limitData
            )
        );
        
        minExpectedAmount = output.minTokenOut;
    }

    function _handlePostMaturityLpRedemption(
        uint256 lpAmount,
        address tokenIn,   // LP token (market)
        address tokenOut,  // Can be SY or underlying
        address vault,
        bytes calldata apiCallData
    ) private view returns (bytes memory callData, uint256 minExpectedAmount) {
        (
            address receiver,
            address market,
            uint256 netLpToRedeem,
            TokenOutput memory output
        ) = abi.decode(
            apiCallData[4:],
            (address, address, uint256, TokenOutput)
        );

        require(receiver == vault, "ATVB01: Receiver must be vault");
        
        // Validate LP token matches the market
        if (tokenIn != address(0)) {
            require(market == tokenIn, "TokenIn (LP) mismatch");
        }
        
        // Validate output token matches
        require(output.tokenOut == tokenOut, "TokenOut mismatch");
            
        callData = abi.encodePacked(
            redeemPostMaturityLpSelector,
            abi.encode(
                vault,
                market,
                lpAmount,  // Use our amount
                output
            )
        );
        
        minExpectedAmount = output.minTokenOut;
    }

    function _handlePostMaturityPtRedemption(
        uint256 ptAmount,
        address tokenIn,   // PT token
        address tokenOut,  // Can be SY or underlying
        address vault,
        bytes calldata apiCallData
    ) private view returns (bytes memory callData, uint256 minExpectedAmount) {
        (
            address receiver,
            address YT,  // In Pendle, PT and YT have separate addresses
            uint256 netPyToRedeem,
            TokenOutput memory output
        ) = abi.decode(
            apiCallData[4:],
            (address, address, uint256, TokenOutput)
        );
        require(receiver == vault, "ATVB02: Receiver must be vault");
        
        // Validate output token matches
        require(output.tokenOut == tokenOut, "TokenOut mismatch");
           
        callData = abi.encodePacked(
            redeemPostMaturityPtSelector,
            abi.encode(
                vault,
                YT,
                ptAmount,  // Use our amount
                output
            )
        );
        
        minExpectedAmount = output.minTokenOut;
    }

    function isMarketMatured(address market) public view returns (bool) {
        try IPendleMarket(market).expiry() returns (uint256 expiry) {
            return block.timestamp >= expiry;
        } catch {
            return false;
        }
    }

    function setAuthorised(address _account, bool _status) external onlyOwner{
        authorised[_account] = _status;
        emit Authorised(_account, _status);
    }

    function isAuthorised(address _account) external view returns (bool) {
        return authorised[_account];
    }

    function updatePendleSelectors(
        bytes4 _addLiquidity,
        bytes4 _removeLiquidity,
        bytes4 _swapPtForUnderlying,
        bytes4 _swapUnderlyingForPt,
        bytes4 _redeemLpPostMaturity,
        bytes4 _redeemPtPostMaturity
    ) external onlyOwner {
        // Optional: non‑zero sanity checks
        require(_addLiquidity != bytes4(0), "ATVB_SEL1");
        require(_removeLiquidity != bytes4(0), "ATVB_SEL2");
        require(_swapPtForUnderlying != bytes4(0), "ATVB_SEL3");
        require(_swapUnderlyingForPt != bytes4(0), "ATVB_SEL4");
        require(_redeemLpPostMaturity != bytes4(0), "ATVB_SEL5");
        require(_redeemPtPostMaturity != bytes4(0), "ATVB_SEL6");

        addLiquiditySelector = _addLiquidity;
        removeLiquiditySelector = _removeLiquidity;
        swapPtForUnderlyingSelector = _swapPtForUnderlying;
        swapUnderlyingForPtSelector = _swapUnderlyingForPt;
        redeemPostMaturityLpSelector = _redeemLpPostMaturity;
        redeemPostMaturityPtSelector = _redeemPtPostMaturity;
    }

}