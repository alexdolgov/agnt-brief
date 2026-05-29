// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {UpgradeableGovernable} from "src/governance/UpgradeableGovernable.sol";
import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/SafeERC20.sol";
import {SafeMath} from "@openzeppelin/math/SafeMath.sol";
import {IERC20Metadata} from "src/interfaces/IERC20Metadata.sol";
import {MulDivMathLib} from "src/libraries/MulDivMathLib.sol";
import {IVeloRouter} from "src/interfaces/swap/IVeloRouter.sol";
import {ICLPool} from "src/interfaces/pool/velo/ICLPool.sol";
import {ITokenSwapper} from "src/interfaces/swap/ITokenSwapper.sol";
import {IVeloSwapper} from "src/interfaces/swap/IVeloSwapper.sol";
import {VeloLibrary} from "src/libraries/velo/VeloLibrary.sol";

contract VeloSwapper is UpgradeableGovernable, IVeloSwapper, ITokenSwapper {
    using SafeMath for uint256;
    using MulDivMathLib for uint256;
    using SafeERC20 for IERC20;

    // Uni V3 Router
    IVeloRouter private V3_ROUTER;

    //Velo Factory
    address private VELO_FACTORY;

    uint8 constant V3_SWAP_EXACT_IN = 0x00;

    // tracker address => input token => output token => swap route
    mapping(address => mapping(address => mapping(address => bytes))) public tokenSwapPaths;

    // tracker address => input token => output token => pairs
    mapping(address => mapping(address => mapping(address => SwapPair[]))) public pairs;

    int24 public ticksMin;

    uint256 public threshold;

    // Math Precision
    uint256 public constant PRECISION = 1e30;

    address public factory;

    uint256 private constant opID = 10;

    function initialize(address _factory) external initializer {
        __Governable_init(msg.sender);

        ticksMin = 60; // 1 minutes
        threshold = PRECISION.mulDivDown(5, 1000); // 0.5%

        factory = _factory;

        uint256 chainId;
        assembly {
            chainId := chainid()
        }

        if (chainId == opID) {
            V3_ROUTER = IVeloRouter(0x4bF3E32de155359D1D75e8B474b66848221142fc);
            VELO_FACTORY = 0xCc0bDDB707055e04e497aB22a59c2aF4391cd12F;
        } else {
            V3_ROUTER = IVeloRouter(0x6Cb442acF35158D5eDa88fe602221b67B400Be3E);
            VELO_FACTORY = 0x5e7BB104d84c7CB9B682AaC2F3d509f5F406809A;
        }
    }

    /**
     * @notice Update Ticks time frame to calculate price.
     */
    function updateTicksMin(int24 _minutes) external onlyGovernor {
        ticksMin = _minutes * 60;
    }

    /**
     * @notice Update price threshold to conclude if a pool is manipulated
     *  1e30 == 100%
     */
    function updateThreshold(uint256 _threshold) external onlyGovernor {
        threshold = _threshold;
    }

    /**
     * @notice Updates the swap path for the given inputToken and outputToken pair for a tracker address.
     * @param trackerAddress Address of tracker contract.
     * @param inputToken The input token of the custom swap route.
     * @param outputToken The output token of the custom swap route.
     * @param swapRoute An array of SwapPair objects representing the new swap path for the given inputToken and outputToken pair.
     * @dev Only the contract owner can call this function.
     */
    function upsertPathOverride(
        address trackerAddress,
        address inputToken,
        address outputToken,
        SwapPair[] calldata swapRoute
    ) external override onlyGovernorOrOperator {
        require(inputToken != address(0), "Empty Token In");
        require(outputToken != address(0), "Empty Token Out");
        require(swapRoute.length != 0, "Empty Path");

        tokenSwapPaths[trackerAddress][inputToken][outputToken] =
            _composeSwapPath(trackerAddress, swapRoute, inputToken, outputToken);
    }

    /**
     * @notice Removes a custom swap route for a specific input-output token pair for a tracker address.
     * @param trackerAddress Address of tracker contract.
     * @param inputToken The input token of the custom swap route to be removed.
     * @param outputToken The output token of the custom swap route to be removed.
     * @dev Only the contract owner can call this function.
     */
    function removePathOverride(address trackerAddress, address inputToken, address outputToken)
        external
        onlyGovernor
    {
        delete tokenSwapPaths[trackerAddress][inputToken][outputToken];
        delete pairs[trackerAddress][inputToken][outputToken];
    }

    /**
     * @notice Returns the serialized swap route between the `inputToken` and `outputToken` as bytes data for a tracker address.
     * @param trackerAddress Address of tracker contract.
     * @param inputToken The input token in the swap route.
     * @param outputToken The output token in the swap route.
     * @return swapRoute The serialized swap route between the `inputToken` and `outputToken`.
     */
    function getSwapPath(address trackerAddress, address inputToken, address outputToken)
        public
        view
        returns (bytes memory swapRoute)
    {
        return tokenSwapPaths[trackerAddress][inputToken][outputToken];
    }

    /**
     * @notice Returns the pairs swap route between the `inputToken` and `outputToken` for a trackler address.
     * @param trackerAddress Address of tracker contract.
     * @param inputToken The input token in the swap route.
     * @param outputToken The output token in the swap route.
     * @return The SwapPair struct route between the `inputToken` and `outputToken`.
     */
    function getPairs(address trackerAddress, address inputToken, address outputToken)
        public
        view
        returns (SwapPair[] memory)
    {
        return pairs[trackerAddress][inputToken][outputToken];
    }

    /**
     * @notice Swaps the specified amount of `tokenIn` for `tokenOut`.
     * @param tokenIn The address of the input token.
     * @param amountIn The amount of the input token to be swapped.
     * @param tokenOut The address of the output token.
     * @param minAmountOut The minimum amount of the output token to be returned.
     * @return amountOut The amount of the output token returned.
     * @dev If the amount of `tokenOut` returned is less than `minAmountOut`, the transaction reverts.
     */
    function swap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut, bytes memory data)
        external
        override
        returns (uint256 amountOut)
    {
        address thisAddress = address(this);
        IERC20(tokenIn).safeTransferFrom(msg.sender, thisAddress, amountIn);
        IERC20(tokenIn).safeApprove(address(V3_ROUTER), amountIn);

        if (minAmountOut == 0) {
            (uint256 slippage, uint256 basis) = abi.decode(data, (uint256, uint256));
            minAmountOut = _applySlippage(_minAmountOut(msg.sender, tokenIn, tokenOut, amountIn), slippage, basis);
        }

        bytes[] memory inputs = new bytes[](1);
        inputs[0] = abi.encode(thisAddress, amountIn, minAmountOut, tokenSwapPaths[msg.sender][tokenIn][tokenOut], true);

        V3_ROUTER.execute(abi.encodePacked(V3_SWAP_EXACT_IN), inputs);

        amountOut = IERC20(tokenOut).balanceOf(thisAddress);

        IERC20(tokenIn).safeApprove(address(V3_ROUTER), 0);
        IERC20(tokenOut).safeTransfer(msg.sender, amountOut);
    }

    function minAmountOut(address tokenIn, address tokenOut, uint256 amountIn)
        external
        view
        override
        returns (uint256)
    {
        return _minAmountOut(msg.sender, tokenIn, tokenOut, amountIn);
    }

    /**
     * @notice Composes a swapPath from a given swapRoute.
     * The swapPath consists of the encoded addresses of the SwapPairs in the swapRoute as well as the fees associated with each swap.
     * @param swapRoute The swapRoute to be composed into a swapPath.
     * @return swapPath The resulting swapPath after composing the swapRoute.
     * @dev Checks that the from address of each SwapPair matches the to address of the previous SwapPair in the swapRoute.
     * If the from address of a SwapPair does not match the to address of the previous SwapPair, it reverts with an error.
     */
    function _composeSwapPath(address trackerAddress, SwapPair[] calldata swapRoute, address tokenIn, address tokenOut)
        private
        returns (bytes memory swapPath)
    {
        swapPath = abi.encodePacked(swapRoute[0].from);
        uint256 srl = swapRoute.length;
        delete pairs[trackerAddress][tokenIn][tokenOut];
        for (uint256 i; i < srl;) {
            pairs[trackerAddress][tokenIn][tokenOut].push(
                SwapPair({from: swapRoute[i].from, to: swapRoute[i].to, tickSpacing: swapRoute[i].tickSpacing})
            );
            swapPath = abi.encodePacked(swapPath, swapRoute[i].tickSpacing, swapRoute[i].to);
            if (i > 0) {
                // i > 0 in check above so i - 1 cannot underflow
                require(swapRoute[i].from == swapRoute[i.sub(1)].to, "Invalid Path Segment");
            }

            // i < srl cannot overflow
            ++i;
        }
    }

    function _minAmountOut(address trackerAddress, address tokenIn, address tokenOut, uint256 amountIn)
        private
        view
        returns (uint256)
    {
        SwapPair[] memory _pairs = pairs[trackerAddress][tokenIn][tokenOut];
        uint256 length = _pairs.length;
        uint256 min;

        for (uint256 i; i < length;) {
            ICLPool pool = VeloLibrary.getPool(VELO_FACTORY, _pairs[i].from, _pairs[i].to, _pairs[i].tickSpacing);

            // Get TWAP of token0 quoted in token1.
            min = _checkManipulation(address(pool));

            address tokenA = pool.token0();

            if (tokenA == _pairs[i].from) {
                // Calculate min amount based of current TWAP price
                min = amountIn.mulDivDown(min, 10 ** IERC20Metadata(tokenA).decimals());
            } else {
                min = amountIn.mulDivDown(10 ** IERC20Metadata(tokenA).decimals(), min);
            }

            amountIn = min;

            // i < length cannot overflow
            ++i;
        }

        return min;
    }

    function _applySlippage(uint256 _amount, uint256 _slippage, uint256 _basis) private pure returns (uint256) {
        return _amount.mulDivDown(_slippage, _basis);
    }

    /**
     * @notice Check pool manipulation. check if the price change "too much" (base on threshold) in X time.
     * @param pool UniswapV3 Pool.
     * @return spot TWAP price of token0 quoted in token1.
     */
    function _checkManipulation(address pool) private view returns (uint256 spot) {
        spot = VeloLibrary.getSpot(pool);

        uint256 mean = VeloLibrary.getPrice(pool, ticksMin);

        uint256 diff;

        if (mean > spot) {
            diff = mean.sub(spot).mulDivDown(PRECISION, spot.add(mean).div(2));
        } else {
            diff = spot.sub(mean).mulDivDown(PRECISION, spot.add(mean).div(2));
        }

        require(diff <= threshold, "Pool Manipulated");
    }

    function _govOrFactory() private view {
        require(hasRole(GOVERNOR, msg.sender) || msg.sender == factory, "Invalid Caller");
    }

    /**
     * @notice Only msg.sender with OPERATOR or GOVERNOR role can call the function.
     */
    modifier onlyGovernorOrOperator() {
        require(hasRole(OPERATOR, msg.sender) || hasRole(GOVERNOR, msg.sender), "Invalid Caller");
        _;
    }

    /**
     * @notice Grant Operator role to _newOperator.
     */
    function addOperator(address _newOperator) external onlyGovernor {
        grantRole(OPERATOR, _newOperator);

        emit OperatorAdded(_newOperator);
    }

    /**
     * @notice Remove Operator role from _operator.
     */
    function removeOperator(address _operator) external onlyGovernor {
        revokeRole(OPERATOR, _operator);

        emit OperatorRemoved(_operator);
    }

    event OperatorAdded(address _newOperator);
    event OperatorRemoved(address _operator);
}
