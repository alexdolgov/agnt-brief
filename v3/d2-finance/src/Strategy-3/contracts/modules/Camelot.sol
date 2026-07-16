// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.28;

interface ICamelot_LP_Module {
    // ---------- Functions ----------

    function camelot_addLiquidity(
        address tokenA,
        address tokenB,
        uint amountADesired,
        uint amountBDesired,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external;

    function camelot_addLiquidityETH(
        uint valueIn,
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external;

    function camelot_removeLiquidity(
        address tokenA,
        address tokenB,
        uint liquidity,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external;

    function camelot_removeLiquidityETH(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external;

    // ---------- Getters ----------
    function camelot_router() external view returns (address);

    function weth() external view returns (address);
}

interface ICamelot_NFTPool_Module {
    // ---------- Functions ----------

    function camelot_nftpool_createPosition(address _poolAddress, uint256 _amount, uint256 _lockDuration) external;

    function camelot_nftpool_addToPosition(address _poolAddress, uint256 _tokenId, uint256 _amountToAdd) external;

    function camelot_nftpool_harvestPosition(address _poolAddress, uint256 _tokenId) external;

    function camelot_nftpool_withdrawFromPosition(address _poolAddress, uint256 _tokenId, uint256 _amountToWithdraw) external;

    function camelot_nftpool_renewLockPosition(address _poolAddress, uint256 _tokenId) external;

    function camelot_nftpool_lockPosition(address _poolAddress, uint256 _tokenId, uint256 _lockDuration) external;

    function camelot_nftpool_splitPosition(address _poolAddress, uint256 _tokenId, uint256 _splitAmount) external;

    function camelot_nftpool_mergePositions(address _poolAddress, uint256[] calldata _tokenIds, uint256 _lockDuration) external;

    function camelot_nftpool_emergencyWithdraw(address _poolAddress, uint256 _tokenId) external;

    // ---------- Callbacks ----------

    function onERC721Received(address, address, uint256, bytes calldata) external pure returns (bytes4);

    function onNFTHarvest(
        address operator,
        address to,
        uint256 tokenId,
        uint256 grailAmount,
        uint256 xGrailAmount
    ) external pure returns (bool);

    function onNFTAddToPosition(address operator, uint256 tokenId, uint256 lpAmount) external pure returns (bool);

    function onNFTWithdraw(address operator, uint256 tokenId, uint256 lpAmount) external pure returns (bool);
}


interface ICamelot_NitroPool_Module {
    // ---------- Functions ----------

    function camelot_nitropool_transfer(address _nitroPoolAddress, address _nftPoolAddress, uint256 _tokenId) external;

    function camelot_nitropool_withdraw(address _poolAddress, uint256 _tokenId) external;

    function camelot_nitropool_emergencyWithdraw(address _poolAddress, uint256 _tokenId) external;

    function camelot_nitropool_harvest(address _poolAddress) external;
}


interface ICamelot_Swap_Module {
    // ---------- Functions ----------

    function camelot_swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        address referrer,
        uint deadline
    ) external;

    function camelot_swapExactETHForTokens(
        uint valueIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        address referrer,
        uint deadline
    ) external;

    function camelot_swapExactTokensForETH(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        address referrer,
        uint deadline
    ) external;

    // ---------- Getters ----------

    function camelot_router() external view returns (address);
}


interface ICamelot_V3LP_Module {
    // ---------- Functions ----------

    function camelot_v3_mint(uint256 valueIn, INonfungiblePositionManager.MintParams calldata params) external returns (uint256);

    function camelot_v3_burn(uint256 tokenId) external;

    function camelot_v3_collect(INonfungiblePositionManager.CollectParams memory params) external;

    function camelot_v3_increaseLiquidity(uint256 valueIn, INonfungiblePositionManager.IncreaseLiquidityParams calldata params) external;

    function camelot_v3_decreaseLiquidity(INonfungiblePositionManager.DecreaseLiquidityParams calldata params) external;

    function camelot_v3_decreaseLiquidityAndCollect(
        INonfungiblePositionManager.DecreaseLiquidityParams calldata decreaseParams,
        INonfungiblePositionManager.CollectParams memory collectParams
    ) external;

    function camelot_v3_decreaseLiquidityCollectAndBurn(
        INonfungiblePositionManager.DecreaseLiquidityParams calldata decreaseParams,
        INonfungiblePositionManager.CollectParams memory collectParams,
        uint256 tokenId
    ) external;
}


interface ICamelot_V3Swap_Module {
    // ---------- Functions ----------

    function camelot_v3_swap(
        uint256 valueIn,
        IOdosRouter.inputToken[] memory inputs,
        IOdosRouter.outputToken[] memory outputs,
        uint256 valueOutQuote,
        uint256 valueOutMin,
        address executor,
        bytes calldata pathDefinition
    ) external;
}


interface ICamelot_Storage_Module {
    // --------- External Functions ---------

    function manageNFTPools(address[] calldata _pools, bool[] calldata _status) external;

    function manageNitroPools(address[] calldata _pools, bool[] calldata _status, uint256[] calldata _indexes) external;

    function manageExecutors(address[] calldata _executors, bool[] calldata _status) external;

    function manageReceivers(address[] calldata _receivers, bool[] calldata _status) external;

    // --------- Getter Functions ---------

    function camelot_nftpool_factory() external view returns (INFTPoolFactory);

    function getAllowedNFTPools() external view returns (address[] memory);

    function getAllowedNitroPools() external view returns (address[] memory);

    function getAllowedExecutors() external view returns (address[] memory);

    function getAllowedReceivers() external view returns (address[] memory);
}

interface INonfungiblePositionManager {
    event DecreaseLiquidity(uint256 indexed tokenId, uint128 liquidity, uint256 amount0, uint256 amount1);

    struct IncreaseLiquidityParams {
        uint256 tokenId;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    struct DecreaseLiquidityParams {
        uint256 tokenId;
        uint128 liquidity;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    struct MintParams {
        address token0;
        address token1;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        address recipient;
        uint256 deadline;
    }

    struct CollectParams {
        uint256 tokenId;
        address recipient;
        uint128 amount0Max;
        uint128 amount1Max;
    }

    function positions(
        uint256 tokenId
    )
        external
        view
        returns (
            uint88 nonce,
            address operator,
            address token0,
            address token1,
            int24 tickLower,
            int24 tickUpper,
            uint128 liquidity,
            uint256 feeGrowthInside0LastX128,
            uint256 feeGrowthInside1LastX128,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        );

    function multicall(bytes[] calldata data) external;

    function refundNativeToken() external;

    function increaseLiquidity(IncreaseLiquidityParams calldata params) external payable;

    function decreaseLiquidity(DecreaseLiquidityParams calldata params) external payable returns (uint256 amount0, uint256 amount1);

    function mint(
        MintParams calldata params
    ) external payable returns (uint256 tokenId, uint128 liquidity, uint256 amount0, uint256 amount1);

    function burn(uint256 tokenId) external payable;

    function collect(CollectParams calldata params) external payable returns (uint256 amount0, uint256 amount1);

    function ownerOf(uint256 tokenId) external view returns (address owner);

    function sweepToken(address token, uint256 amountMinimum, address recipient) external;

    function unwrapWNativeToken(uint256 amountMinimum, address recipient) external;
}

interface IOdosRouter {
    /// @dev Contains all information needed to describe an input token being swapped from
    struct inputToken {
        address tokenAddress;
        uint256 amountIn;
        address receiver;
        bytes permit;
    }
    /// @dev Contains all information needed to describe an output token being swapped to
    struct outputToken {
        address tokenAddress;
        uint256 relativeValue;
        address receiver;
    }

    function swap(
        inputToken[] memory inputs,
        outputToken[] memory outputs,
        uint256 valueOutQuote,
        uint256 valueOutMin,
        address executor,
        bytes calldata pathDefinition
    ) external payable returns (uint256[] memory amountsOut, uint256 gasLeft);
}

interface INFTPoolFactory {
    function getPool(address _lpToken) external view returns (address);
}
