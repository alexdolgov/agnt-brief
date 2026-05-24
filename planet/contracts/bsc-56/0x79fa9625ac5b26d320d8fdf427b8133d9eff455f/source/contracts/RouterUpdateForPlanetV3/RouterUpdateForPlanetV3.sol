// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import './Path.sol';
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import './IFusionRouter.sol';
import './IPlanetFactory.sol';
import './IPlanetPair.sol';
import './IQuoter.sol';


contract PlanetRouter is IFusionRouter{
    using SafeERC20 for IERC20;
    using Path for bytes;
    
    address public immutable factory; // Planet's factory address
    uint public swapFeeFactor = 9975;
    uint internal constant swapFeeFactorMin = 9900;
    address public admin; 
    address[] public btcbToGammaPath; // Path to swap from BTCB to GAMMA on Planet's Factory
    address public fusionQuoterAddress; // Thena's Fusion Quoter
    address public fusionRouterAddress; // Thena's Fusion Router

    modifier ensure(uint deadline) {
        require(deadline >= block.timestamp, 'PlanetRouter: EXPIRED');
        _;
    }

    constructor(address _factory, address _fusionQuoterAddress, address _fusionRouterAddress) {
        factory = _factory;
        fusionQuoterAddress = _fusionQuoterAddress;
        fusionRouterAddress = _fusionRouterAddress;
        admin = msg.sender;
    }

    /**
    * @notice Executes a series of swaps through a specified path of tokens
    * This internal and virtual function is designed to perform swaps starting with an initial amount that has already been sent to the first pair in the path
    * @param amounts An array of amounts that represents the minimum amount out for each swap in the path
    * @param path An array of token addresses that the swap will navigate through, determining the pairs to interact with
    * @param _to The final recipient address of the output tokens from the last swap in the path
    * @dev It iterates through the path of tokens, performing swaps at each pair and sending the output tokens to the next pair in the path
    * @dev The final swap's output tokens are sent to the address specified by `_to`
    * @dev This function requires the initial amount of the first token in the path to have already been sent to the first pair
    */
    function _swap(uint[] memory amounts, address[] memory path, address _to) internal virtual {
        for (uint i = 0; i < path.length - 1;) {
            (address input, address output) = (path[i], path[i + 1]);
            (address token0,) = sortTokens(input, output);
            uint amountOut = amounts[i + 1];
            (uint amount0Out, uint amount1Out) = input == token0 ? (uint(0), amountOut) : (amountOut, uint(0));
            address to = i < path.length - 2 ? pairFor(output, path[i + 2]) : _to;
            IPlanetPair(pairFor(input, output)).swap(
                amount0Out, amount1Out, to, new bytes(0)
            );
            unchecked{
                i++;
            }
        }
    }

    /**
    * @notice Sorts two token addresses in ascending order which is required for interacting with pairs, ensuring that the return values are predictable and standardized
    * @param tokenA The address of the first token
    * @param tokenB The address of the second token
    * @return token0 The address of the token that is lower in order
    * @return token1 The address of the token that is higher in order
    */
    function sortTokens(address tokenA, address tokenB) internal pure returns (address token0, address token1) {
        require(tokenA != tokenB, 'PlanetLibrary: IDENTICAL_ADDRESSES');
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), 'PlanetLibrary: ZERO_ADDRESS');
    }

    /**
    * @notice Retrieves the liquidity pair address for two tokens from the PlanetFactory
    * @param tokenA The address of the first token in the pair
    * @param tokenB The address of the second token in the pair
    * @return pair The address of the liquidity pair for tokenA and tokenB
    * @dev This function queries the PlanetFactory contract to get the pair address for the specified tokens
    */
    function pairFor(address tokenA, address tokenB) internal view returns (address pair) {
        pair = IPlanetFactory(factory).getPair(tokenA, tokenB);
    }

    /**
    * @notice Fetches the reserve amounts of two tokens in a liquidity pair, ensuring the reserves are returned in the correct order relative to the input token addresses
    * @param tokenA The address of the first token in the pair
    * @param tokenB The address of the second token in the pair
    * @return reserveA The reserve amount of tokenA
    * @return reserveB The reserve amount of tokenB
    * @dev It returns the reserves in the order corresponding to the input token addresses, ensuring consistent and intuitive output
    */
    function getReserves(address tokenA, address tokenB) public view returns (uint reserveA, uint reserveB) {
        (address token0,) = sortTokens(tokenA, tokenB);
        (uint reserve0, uint reserve1,) = IPlanetPair(pairFor(tokenA, tokenB)).getReserves();
        (reserveA, reserveB) = tokenA == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
    }

    /**
    * @notice Calculates how much of one asset you can receive for a given amount of another asset, based on the current reserves in the liquidity pool
    * @param amountIn The amount of the input asset
    * @param reserveIn The reserve of the input asset in the liquidity pool
    * @param reserveOut The reserve of the output asset in the liquidity pool
    * @return amountOut The estimated output amount of the other asset that can be received
    * @dev The function applies a fee on the input amount, which is factored into the calculation to determine the output amount
    * @dev Requires that the input amount and both reserves are greater than 0 to prevent division by zero and ensure there's sufficient liquidity
    */
    function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut) internal view returns (uint amountOut) {
        require(amountIn != 0, 'PlanetLibrary: INSUFFICIENT_INPUT_AMOUNT');
        require(reserveIn != 0 && reserveOut != 0, 'PlanetLibrary: INSUFFICIENT_LIQUIDITY');
        uint amountInWithFee = amountIn*swapFeeFactor;
        uint numerator = amountInWithFee*reserveOut;
        uint denominator = (reserveIn*10000) + amountInWithFee;
        amountOut = numerator / denominator;
    }

    /**
    * @notice Calculates the output amounts for each pair in a trading path given an input amount for the first token in the path
    * @param amountIn The amount of the input token to start the calculations with
    * @param path An array of token addresses representing the trading path where each token is exchanged for the next in the array
    * @return amounts An array of output amounts for each token in the path, including the initial input amount
    * @dev The function iterates over the path, using each consecutive pair of addresses to perform a getAmountOut calculation
    * @dev Requires that the path contains at least two addresses, ensuring there's at least one pair to calculate the amount out
    */
    function getAmountsOut(uint amountIn, address[] memory path) public view returns (uint[] memory amounts) {
        require(path.length >= 2, 'PlanetLibrary: INVALID_PATH');
        amounts = new uint[](path.length);
        amounts[0] = amountIn;
        for (uint i = 0; i < path.length - 1;) {
            (uint reserveIn, uint reserveOut) = getReserves(path[i], path[i + 1]);
            amounts[i + 1] = getAmountOut(amounts[i], reserveIn, reserveOut);
            unchecked{
                i++;
            }
        }
    }

    /**
    * @notice Updates the swap fee factor used in calculating the output amount of swaps
    * This function allows the contract owner to adjust the swap fee factor, affecting how output amounts are calculated in swap operations
    * @param _swapFeeFactor The new swap fee factor to be used in calculations
    * @dev Requires that the caller is the contract admin/owner
    * @dev Ensures the new swap fee factor is not less than the minimum allowed value
    */
    function updateSwapFeeFactor(uint _swapFeeFactor) external {
        require(msg.sender == admin, "only owner");
        require(swapFeeFactorMin <= _swapFeeFactor);
        swapFeeFactor = _swapFeeFactor;
    }


    /**
    * @notice Updates the address of the FusionQuoter contract
    * @param _fusionQuoterAddress The new address for the FusionQuoter contract
    * @dev Requires that the caller is the contract admin/owner
    * @dev Ensures that the new FusionQuoter address is not the zero address to avoid invalid configurations
    */
    function updateFusionQuoterAddress(address _fusionQuoterAddress) external{
        require(msg.sender == admin, "only owner");
        require(_fusionQuoterAddress != address(0), "can't be 0 address");
        fusionQuoterAddress = _fusionQuoterAddress;
    }

    /**
    * @notice Updates the address of the FusionRouter contract
    * @param _fusionRouterAddress The new address for the FusionRouter contract
    * @dev Requires that the caller is the contract admin/owner
    * @dev Ensures that the new FusionRouter address is not the zero address to maintain a valid configuration
    */
    function updateFusionRouterAddress(address _fusionRouterAddress) external{
        require(msg.sender == admin, "only owner");
        require(_fusionRouterAddress != address(0), "can't be 0 address");
        fusionRouterAddress = _fusionRouterAddress;
    }

    /**
    * @notice Changes the administrator of the contract
    * @param _newAdmin The address of the new administrator
    * @dev Requires that the caller is the current admin/owner of the contract
    * @dev Ensures that the new administrator's address is not the zero address to prevent invalid ownership
    */
    function changeAdmin(address _newAdmin) external {
        require(msg.sender == admin, "only owner");
        require(_newAdmin != address(0), "can't be 0 address");
        admin = _newAdmin;
    }

    /**
    * @notice Updates the path used for swapping BTCB to GAMMA
    * @param _btcbToGammaPath An array of addresses representing the new path for swapping BTCB to GAMMA
    * @dev Requires that the caller is the current admin/owner of the contract
    */
    function changeBtcbToGammaPath(address[] memory _btcbToGammaPath) external {
        require(msg.sender == admin, "only owner");
        btcbToGammaPath = _btcbToGammaPath;
    }


    /**
    * @notice Swaps an input token to GAMMA through a double step process that first swaps through Thena's Fusion pools to BTCB and then swaps BTCB to GAMMA through Planet's Factory
    * @param _amountIn The amount of the input token to swap
    * @param _amountOutMin The minimum amount of GAMMA expected to receive from the swap, for slippage protection
    * @param _path Encoded swap path data specific to the swap through Thena's fusion pools, including intermediary tokens or operations
    * @param _to The address where the output GAMMA tokens should be sent
    * @param _deadline Timestamp until which the transaction is valid, to protect against blockchain reorganizations and miner frontrunning
    * @dev The function first transfers the input tokens from the caller to the contract, then performs quoting and the Thena fusion swap followed by the Planet swap
    * @dev Ensures the final amount of GAMMA received is at least the minimum specified by `_amountOutMin`
    * @dev Utilizes the `ensure` modifier to check that the transaction is executed before the deadline
    */
    function swapFusionToGamma(
        uint _amountIn,
        uint _amountOutMin,
        bytes calldata _path,
        address _to,
        uint _deadline
        ) external virtual ensure(_deadline){

        address fromToken = _path.getFromAddress();
        IERC20(fromToken).safeTransferFrom(
            msg.sender, address(this), _amountIn
        );

        uint256 amountOut;
        (amountOut, ) = IQuoter(fusionQuoterAddress).quoteExactInput(_path, _amountIn);

        address _fusionRouterAddress = fusionRouterAddress;
        IERC20(fromToken).safeIncreaseAllowance(
                _fusionRouterAddress,
                _amountIn
            ); 
        
        ExactInputParams memory exactInputParams = ExactInputParams({
            path: _path,
            recipient: address(this),
            deadline: _deadline,
            amountIn: _amountIn,
            amountOutMinimum: ((995 * amountOut)/1000)
        });
        amountOut = IFusionRouter2(_fusionRouterAddress).exactInput(exactInputParams);

        address[] memory path = btcbToGammaPath;
        uint256[] memory amounts = getAmountsOut(amountOut, path);
        require(amounts[amounts.length-1] >= _amountOutMin, 'PlanetRouter: INSUFFICIENT_OUTPUT_AMOUNT');

        IERC20(path[0]).safeTransfer(
            pairFor(path[0], path[1]), amounts[0]
        );

        _swap(amounts, path, _to);
    }
}