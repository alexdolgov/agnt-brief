pragma solidity ^0.8.23;
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";
import { Currency } from "@uniswap/v4-core/src/types/Currency.sol";
import { IHooks } from "lib/v4-core/src/interfaces/IHooks.sol";
import { IUniswapV4Router04 } from "hookmate/interfaces/router/IUniswapV4Router04.sol";
import {ITokenManager} from "./interfaces/ITokenManager.sol";
import {ITokenManagerERC20} from "./interfaces/ITokenManagerERC20.sol";
import {IArenaPoolDeployer} from "./interfaces/IArenaPoolDeployer.sol";
import {ITokenTemplate} from "./interfaces/ITokenTemplate.sol";
import {console} from "forge-std/console.sol";

interface IWAVAX {
    function deposit() external payable;
    function withdraw(uint256 wad) external;
    function approve(address guy, uint256 wad) external returns (bool);
    function balanceOf(address owner) external view returns (uint256);
}
contract SingleTxBuyer {
    IUniswapV4Router04 public constant UNISWAP_V4_ROUTER =
        IUniswapV4Router04(payable(0x342F35aE81cd6743A4727CdD57e883C877a65aC2));
    address public constant WAVAX_ADDRESS =
        0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
    IWAVAX public constant WAVAX = IWAVAX(WAVAX_ADDRESS);
    address public constant ARENA_ADDRESS = 0xB8d7710f7d8349A506b75dD184F05777c82dAd0C;
    struct BondAndBuyFromLpParams {
        address tokenManager;
        uint32 a;
        uint8 b;
        uint128 curveScaler;
        uint8 creatorFeeBasisPoints;
        address tokenCreatorAddress;
        uint256 tokenSplit;
        string name;
        string symbol;
        uint256 tokenOut;
    }

    constructor() {
        WAVAX.approve(address(UNISWAP_V4_ROUTER), type(uint256).max);
        IERC20(ARENA_ADDRESS).approve(address(UNISWAP_V4_ROUTER), type(uint256).max);
        
    }

    function bondAndBuyFromLpOnCreation(
        BondAndBuyFromLpParams calldata params
    ) external payable {
        ITokenTemplate.Whitelist memory whitelist;
        _handleBondAndBuyFromLpTokenManager(params, whitelist);
    }


    function bondAndBuyFromLpOnERC20Creation(
        BondAndBuyFromLpParams calldata params,
        uint256 arenaToSpend
    ) external {
        ITokenTemplate.Whitelist memory whitelist;
        _handleBondAndBuyFromLpTokenManagerERC20(params, arenaToSpend, whitelist);
    }

    function bondAndBuyFromLpOnCreationWithWhitelist(
        BondAndBuyFromLpParams calldata params,
        ITokenTemplate.Whitelist calldata whitelist
    ) external payable {
        _handleBondAndBuyFromLpTokenManager(params, whitelist);
    }

    function bondAndBuyFromLpOnERC20CreationWithWhitelist(
        BondAndBuyFromLpParams calldata params,
        uint256 arenaToSpend,
        ITokenTemplate.Whitelist calldata whitelist
    ) external {
        _handleBondAndBuyFromLpTokenManagerERC20(params, arenaToSpend, whitelist);
    }


    function _handleSwap(address tokenAddress, address pairedTokenAddress, uint256 buyAmountFromLp) internal {
        address token0 = pairedTokenAddress > tokenAddress
            ? tokenAddress
            : pairedTokenAddress;
        address token1 = pairedTokenAddress > tokenAddress
            ? pairedTokenAddress
            : tokenAddress;

        PoolKey memory key = PoolKey({
            currency0: Currency.wrap(token0),
            currency1: Currency.wrap(token1),
            fee: 3000,
            tickSpacing: 200,
            hooks: IHooks(0xE32A5d788c568FC5A671255d17B618e70552E044)
        });
        UNISWAP_V4_ROUTER.swapTokensForExactTokens({
            amountOut: buyAmountFromLp,
            amountInMax: type(uint256).max,
            zeroForOne: token0 == pairedTokenAddress,
            poolKey: key,
            hookData: new bytes(0),
            receiver: msg.sender,
            deadline: block.timestamp
        });
    }

    function _handleCreateAndBuyFromTokenManager(address tokenManager, BondAndBuyFromLpParams memory params, uint256 preBondAmount, ITokenTemplate.Whitelist memory whitelist) internal {
        if(whitelist.duration == 0 && whitelist.addresses.length == 0) {
            ITokenManager(params.tokenManager).createToken{value: msg.value}(
                uint16(params.a), // 16 bit
                params.b,
                params.curveScaler,
                params.creatorFeeBasisPoints,
                params.tokenCreatorAddress,
                params.tokenSplit,
                params.name,
                params.symbol,
                preBondAmount
            );
        }
        else {
            ITokenManager(params.tokenManager).createTokenWithWL{value: msg.value}(
                uint16(params.a), // 16 bit
                params.b,
                params.curveScaler,
                params.creatorFeeBasisPoints,
                params.tokenCreatorAddress,
                params.tokenSplit,
                params.name,
                params.symbol,
                preBondAmount,
                whitelist
            );
        }
    }

    function _handleCreateAndBuyFromTokenManagerERC20(address tokenManager, BondAndBuyFromLpParams memory params, uint256 preBondAmount, ITokenTemplate.Whitelist memory whitelist) internal {
        if(whitelist.duration == 0 && whitelist.addresses.length == 0) {
            ITokenManagerERC20(params.tokenManager).createToken(
                params.a, // 32 bit
                params.b,
                params.curveScaler,
                params.creatorFeeBasisPoints,
                params.tokenCreatorAddress,
                params.tokenSplit,
                params.name, 
                params.symbol,
                preBondAmount
            );
        }
        else {
            ITokenManagerERC20(params.tokenManager).createTokenWithWL(
                params.a, // 32 bit
                params.b,
                params.curveScaler,
                params.creatorFeeBasisPoints,
                params.tokenCreatorAddress,
                params.tokenSplit,
                params.name, 
                params.symbol,
                preBondAmount,
                whitelist
            );
        }
    }

    function _handleBondAndBuyFromLpTokenManager( BondAndBuyFromLpParams memory params, ITokenTemplate.Whitelist memory whitelist) internal {
        uint256 tokenId = ITokenManager(params.tokenManager).tokenIdentifier(); // next tokenId
        uint256 preBondAmount = 10_000_000_000 ether * params.tokenSplit / 100;
        _handleCreateAndBuyFromTokenManager(params.tokenManager, params, preBondAmount, whitelist);
        uint256 buyAmountFromLp = params.tokenOut - preBondAmount;
        WAVAX.deposit{value: address(this).balance}();
        ITokenManager.TokenParameters memory tokenParams = ITokenManager(params.tokenManager).getTokenParameters(tokenId);
        _handleSwap(tokenParams.tokenContractAddress, WAVAX_ADDRESS, buyAmountFromLp);
        IERC20(tokenParams.tokenContractAddress).transfer(
            msg.sender,
            preBondAmount
            
        );
        WAVAX.withdraw(WAVAX.balanceOf(address(this)));
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
    }

    function _handleBondAndBuyFromLpTokenManagerERC20( BondAndBuyFromLpParams memory params, uint256 arenaToSpend, ITokenTemplate.Whitelist memory whitelist) internal { 
        IERC20(ARENA_ADDRESS).transferFrom(msg.sender, address(this), arenaToSpend);
        IERC20(ARENA_ADDRESS).approve(params.tokenManager, arenaToSpend);
        uint256 tokenId = ITokenManagerERC20(params.tokenManager).tokenIdentifier(); // next tokenId
        uint256 preBondAmount = 10_000_000_000 ether * params.tokenSplit / 100;
        _handleCreateAndBuyFromTokenManagerERC20(params.tokenManager, params, preBondAmount, whitelist);
        uint256 buyAmountFromLp = params.tokenOut - preBondAmount;
        ITokenManagerERC20.TokenParameters memory tokenParams = ITokenManagerERC20(params.tokenManager).getTokenParameters(tokenId);
        _handleSwap(tokenParams.tokenContractAddress, ARENA_ADDRESS, buyAmountFromLp);
        IERC20(tokenParams.tokenContractAddress).transfer(
            msg.sender,
            preBondAmount
            
        );
        IERC20(ARENA_ADDRESS).transfer(msg.sender,IERC20(ARENA_ADDRESS).balanceOf(address(this)));

    }



    receive() external payable {}
}