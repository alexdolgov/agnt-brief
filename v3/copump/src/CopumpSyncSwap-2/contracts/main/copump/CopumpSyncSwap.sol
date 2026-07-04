// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./Copump.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/* solhint-disable explicit-types */
struct TokenInput {
    address token;
    uint amount;
    bool useVault;
}
/* solhint-enable explicit-types */

interface IWETH9 is IERC20 {
    function deposit() external payable;
}

interface IPoolFactory {
    function createPool(bytes calldata data) external returns (address pool);
    function getPool(address tokenA, address tokenB) external view returns (address pool);
}

/* solhint-disable explicit-types */
interface IRouter {
    function addLiquidity(
        address pool,
        TokenInput[] calldata inputs,
        bytes calldata data,
        uint minLiquidity,
        address callback,
        bytes calldata callbackData,
        address staking
    ) external payable returns (uint liquidity);

    function wETH() external view returns (address);
}
/* solhint-enable explicit-types */

contract CopumpSyncSwap is Copump {
    constructor(
        address ownerAddress,
        address factoryAddress_,
        address routerAddress_,
        uint256 creationFee_,
        uint256 fundThreshold_,
        uint256 initialPrice_
    ) Copump(
        ownerAddress,
        factoryAddress_,
        routerAddress_,
        creationFee_,
        fundThreshold_,
        initialPrice_
    ) {}

    // Check and create a liquidity pool with a pair token/WETH.
    function _deployLiquidityPool(
        DummyToken token,
        TokenInfo storage tokenInfo,
        uint256 funding
    ) internal override {
        Token listedToken = new Token(token.name(), token.symbol());
        address listedAddress = address(listedToken);
        tokenInfo.listedAddress = listedAddress;
        listedToken.mint(address(this), INITIAL_SUPPLY);
        bool approvalSuccessful = listedToken.approve(routerAddress, INITIAL_SUPPLY);
        require(approvalSuccessful, "Initial supply can't be approved");

        IRouter router = IRouter(routerAddress);
        address wethAddress = router.wETH();
        IWETH9 wethContract = IWETH9(wethAddress);
        wethContract.deposit{ value: funding }();
        bool approvalWethSuccessful = wethContract.approve(routerAddress, funding);
        require(approvalWethSuccessful, "WETH can't be approved");

        // Identify token0 and token1 based on address order
        (address token0, address token1) = (wethAddress < listedAddress) ?
            (wethAddress, listedAddress) :
            (listedAddress, wethAddress);
        IPoolFactory factory = IPoolFactory(factoryAddress);
        address poolAddress = factory.getPool(token0, token1);
        if (poolAddress == address(0)) {
            bytes memory poolData = abi.encode(token0, token1);
            poolAddress = factory.createPool(poolData);
        }
        emit TokenListed(
            address(token),
            poolAddress,
            listedAddress,
            block.timestamp
        );

        TokenInput[] memory inputs = new TokenInput[](2);
        inputs[0] = TokenInput(token0, token0 == listedAddress ? INITIAL_SUPPLY : funding, true);
        inputs[1] = TokenInput(token1, token1 == listedAddress ? INITIAL_SUPPLY : funding, true);
        bytes memory data = abi.encode(address(this));
        router.addLiquidity(
            poolAddress,
            inputs,
            data,
            0,
            address(0),
            "",
            address(0)
        );
    }
}
