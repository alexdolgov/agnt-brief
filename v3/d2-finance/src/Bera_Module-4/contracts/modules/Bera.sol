// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.28;

import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "./ModuleHelper.sol";

// https://documentation.kodiak.finance/overview/kodiak-contracts

interface IBera_Module {
    function bera_bgt_redeem(uint256 amount) external;
    function bera_bgt_act(uint256 action, bytes calldata target, uint128 amount) external;
    function bera_bgt_get_reward() external;
    function bera_vault_stake(address token, uint256 amount) external;
    function bera_vault_withdraw(address token, uint256 amount) external;
    function bera_vault_get_reward(address token) external;
    function bera_infrared_stake(address vault, address token, uint256 amount) external;
    function bera_infrared_withdraw(address vault, uint256 amount) external;
    function bera_infrared_get_reward(address vault) external;
    function bera_oogabooga_swap(IOogaBooga.SwapTokenInfo memory tokenInfo, bytes calldata pathDefinition, address executor, uint32 referralCode, uint256 value) external;
    function bera_kodiakv2_add(address tokenA, address tokenB, uint256 amountA, uint256 amountB, uint256 amountAMin, uint256 amountBMin) external;
    function bera_kodiakv2_remove(address tokenA, address tokenB, uint256 amount, uint256 amountAMin, uint256 amountBMin) external;
    function bera_kodiakv2_swap(address token, uint amount, uint amountMin, address[] calldata path) external;
    function bera_kodiakv3_mint(address tokenA, address tokenB, uint24 fee, int24 tickLower, int24 tickUpper, uint256 amountA, uint256 amountB, uint256 amountAMin, uint256 amountBMin) external;
    function bera_kodiakv3_increase(address tokenA, address tokenB, uint256 tokenId, uint256 amountA, uint256 amountB, uint256 amountAMin, uint256 amountBMin) external;
    function bera_kodiakv3_decrease(uint256 tokenId, uint256 amount, uint256 amountAMin, uint256 amountBMin) external;
    function bera_kodiakv3_collect(uint256 tokenId) external;
    function bera_kodiakv3_burn(uint256 tokenId) external;
    function bera_kodiakv3_swap(address token, uint amount, uint amountMin, bytes memory path) external;
    function bera_kodiakv3_islands_mint(address island, uint amount) external;
    function bera_kodiakv3_islands_burn(address island, uint amount) external;
    function bera_kodiakv3_islands_deploy(address tokenA, address tokenB, uint24 uniFee, int24 lowerTick, int24 upperTick) external;
}

contract Bera_Module is ModuleHelper, AccessControl, ReentrancyGuard {
    using EnumerableSet for EnumerableSet.AddressSet;

    bytes32 public constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");

    IBGT public immutable bgt;
    IBGTStaker public immutable bgtStaker;
    IVaultFactory public immutable vaultFactory;
    IOogaBooga public immutable oogaBooga;
    IKodiakV2 public immutable kodiakv2;
    IKodiakV3 public immutable kodiakv3;
    IKodiakV3SwapRouter public immutable kodiakv3swap;
    IKodiakV3IslandFactory public immutable kodiakv3islandFactory;

    constructor(address _bgt, address _bgtStaker, address _vaultFactory, address _oogaBooga, address _kodiakv2, address _kodiakv3, address _kodiakv3swap, address _kodiakv3islandFactory) {
        bgt = IBGT(_bgt);
        bgtStaker = IBGTStaker(_bgtStaker);
        vaultFactory = IVaultFactory(_vaultFactory);
        oogaBooga = IOogaBooga(payable(_oogaBooga));
        kodiakv2 = IKodiakV2(_kodiakv2);
        kodiakv3 = IKodiakV3(_kodiakv3);
        kodiakv3swap = IKodiakV3SwapRouter(_kodiakv3swap);
        kodiakv3islandFactory = IKodiakV3IslandFactory(_kodiakv3islandFactory);
    }

    function bera_bgt_redeem(uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        bgt.redeem(address(this), amount);
    }

    function bera_bgt_act(uint256 action, bytes calldata target, uint128 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        if (action == 1) {
            bgt.queueBoost(target, amount);
        } else if (action == 2) {
            bgt.cancelBoost(target, amount);
        } else if (action == 3) {
            bgt.activateBoost(address(this), target);
        } else if (action == 4) {
            bgt.queueDropBoost(target, amount);
        } else if (action == 5) {
            bgt.cancelDropBoost(target, amount);
        } else if (action == 6) {
            bgt.dropBoost(address(this), target);
        }
    }

    function bera_bgt_get_reward() external onlyRole(EXECUTOR_ROLE) nonReentrant {
        bgtStaker.getReward();
    }

    function bera_vault_stake(address token, uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        IVault(vaultFactory.getVault(token)).stake(amount);
    }

    function bera_vault_withdraw(address token, uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        IVault(vaultFactory.getVault(token)).withdraw(amount);
    }

    function bera_vault_get_reward(address token) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        IVault(vaultFactory.getVault(token)).getReward(address(this), address(this));
    }

    function bera_infrared_stake(address vault, address token, uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateSpender(vault);
        IERC20(token).approve(vault, amount);
        IInfraredVault(vault).stake(amount);
    }

    function bera_infrared_withdraw(address vault, uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        IInfraredVault(vault).withdraw(amount);
    }

    function bera_infrared_get_reward(address vault) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        IInfraredVault(vault).getReward();
    }

    function bera_oogabooga_swap(IOogaBooga.SwapTokenInfo memory tokenInfo, bytes calldata pathDefinition, address executor, uint32 referralCode, uint256 value) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        require(tokenInfo.outputReceiver == address(this), "receiver");
        validateToken(tokenInfo.inputToken);
        validateToken(tokenInfo.outputToken);
        IERC20(tokenInfo.inputToken).approve(address(oogaBooga), tokenInfo.inputAmount);
        oogaBooga.swap{value: value}(tokenInfo, pathDefinition, executor, referralCode);
    }

    function bera_kodiakv2_add(address tokenA, address tokenB, uint256 amountA, uint256 amountB, uint256 amountAMin, uint256 amountBMin) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateToken(tokenA);
        validateToken(tokenB);
        IERC20(tokenA).approve(address(kodiakv2), amountA);
        IERC20(tokenB).approve(address(kodiakv2), amountB);
        kodiakv2.addLiquidity(tokenA, tokenB, amountA, amountB, amountAMin, amountBMin, address(this), type(uint256).max);
    }

    function bera_kodiakv2_remove(address tokenA, address tokenB, uint256 amount, uint256 amountAMin, uint256 amountBMin) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        address pair = IKodiakV2(kodiakv2.factory()).getPair(tokenA, tokenB);
        IERC20(pair).approve(address(kodiakv2), amount);
        kodiakv2.removeLiquidity(tokenA, tokenB, amount, amountAMin, amountBMin, address(this), type(uint256).max);
    }

    function bera_kodiakv2_swap(address token, uint amount, uint amountMin, address[] calldata path) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateToken(token);
        validateToken(path[path.length - 1]);
        IERC20(token).approve(address(kodiakv2), amount);
        kodiakv2.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            amount,
            amountMin,
            path,
            address(this),
            type(uint256).max
        );
    }

    function bera_kodiakv3_mint(address tokenA, address tokenB, uint24 fee, int24 tickLower, int24 tickUpper, uint256 amountA, uint256 amountB, uint256 amountAMin, uint256 amountBMin) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateToken(tokenA);
        validateToken(tokenB);
        IERC20(tokenA).approve(address(kodiakv3), amountA);
        IERC20(tokenB).approve(address(kodiakv3), amountB);
        kodiakv3.mint(IKodiakV3.MintParams({
            token0: tokenA,
            token1: tokenB,
            fee: fee,
            tickLower: tickLower,
            tickUpper: tickUpper,
            amount0Desired: amountA,
            amount1Desired: amountB,
            amount0Min: amountAMin,
            amount1Min: amountBMin,
            recipient: address(this),
            deadline: type(uint256).max
        }));
    }

    function bera_kodiakv3_increase(address tokenA, address tokenB, uint256 tokenId, uint256 amountA, uint256 amountB, uint256 amountAMin, uint256 amountBMin) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        IERC20(tokenA).approve(address(kodiakv3), amountA);
        IERC20(tokenB).approve(address(kodiakv3), amountB);
        kodiakv3.increaseLiquidity(IKodiakV3.IncreaseLiquidityParams({
            tokenId: tokenId,
            amount0Desired: amountA,
            amount1Desired: amountB,
            amount0Min: amountAMin,
            amount1Min: amountBMin,
            deadline: type(uint256).max
        }));
    }

    function bera_kodiakv3_decrease(uint256 tokenId, uint256 amount, uint256 amountAMin, uint256 amountBMin) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        kodiakv3.decreaseLiquidity(IKodiakV3.DecreaseLiquidityParams({
            tokenId: tokenId,
            liquidity: uint128(amount),
            amount0Min: amountAMin,
            amount1Min: amountBMin,
            deadline: type(uint256).max
        }));
    }

    function bera_kodiakv3_collect(uint256 tokenId) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        kodiakv3.collect(IKodiakV3.CollectParams({
            tokenId: tokenId,
            recipient: address(this),
            amount0Max: type(uint128).max,
            amount1Max: type(uint128).max
        }));
    }

    function bera_kodiakv3_burn(uint256 tokenId) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        kodiakv3.burn(tokenId);
    }

    function bera_kodiakv3_swap(address token, uint amount, uint amountMin, bytes calldata path) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateToken(token);
        validateToken(pathLastAddress(path));
        IERC20(token).approve(address(kodiakv3swap), amount);
        kodiakv3swap.exactInput(IKodiakV3SwapRouter.ExactInputParams({
            path: path,
            recipient: address(this),
            amountIn: amount,
            amountOutMinimum: amountMin
        }));
    }

    function bera_kodiakv3_islands_mint(address island, uint amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateSpender(island);
        IERC20(IKodiakV3Island(island).token0()).approve(island, type(uint256).max);
        IERC20(IKodiakV3Island(island).token1()).approve(island, type(uint256).max);
        IKodiakV3Island(island).mint(amount, address(this));
    }

    function bera_kodiakv3_islands_burn(address island, uint amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateSpender(island);
        IKodiakV3Island(island).burn(amount, address(this));
    }

    function bera_kodiakv3_islands_deploy(address tokenA, address tokenB, uint24 uniFee, int24 lowerTick, int24 upperTick) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        address island = kodiakv3islandFactory.deployVault(
            tokenA, tokenB, uniFee,
            address(0), address(0), 0,
            lowerTick, upperTick
        );
        getTraderV0Storage().allowedSpenders.add(island);
    }

    function pathLastAddress(bytes memory path) internal pure returns (address) {
        require(path.length >= 20, "pathLastAddress");
        address output;
        assembly {
            output := shr(96, mload(add(path, add(0x20, sub(mload(path), 20)))))
        }
        return output;
    }
}

interface IERC20 {
    function approve(address target, uint256 amount) external;
}

interface IBGT {
    function redeem(address receiver, uint256 amount) external;
    function queueBoost(bytes calldata pubkey, uint128 amount) external;
    function cancelBoost(bytes calldata pubkey, uint128 amount) external;
    function activateBoost(address user, bytes calldata pubkey) external;
    function queueDropBoost(bytes calldata pubkey, uint128 amount) external;
    function cancelDropBoost(bytes calldata pubkey, uint128 amount) external;
    function dropBoost(address user, bytes calldata pubkey) external returns (bool);
}

interface IBGTStaker {
    function getReward() external;
}

interface IVaultFactory {
  function getVault(address stakingToken) external view returns (address);
}

interface IVault {
  function stake(uint256 amount) external;
  function withdraw(uint256 amount) external;
  function getReward(address account, address recipient) external;
}

interface IInfraredVault {
  function stake(uint256 amount) external;
  function withdraw(uint256 amount) external;
  function getReward() external;
}

interface IOogaBooga {
    struct SwapTokenInfo {
        address inputToken;
        uint256 inputAmount;
        address outputToken;
        uint256 outputQuote;
        uint256 outputMin;
        address outputReceiver;
    }
    function swap(SwapTokenInfo memory tokenInfo, bytes calldata pathDefinition, address executor, uint32 referralCode) external payable;
}

interface IKodiakV2 {
    function factory() external view returns (address);
    function getPair(address, address) external view returns (address);
    function addLiquidity(
        address tokenA,
        address tokenB,
        uint amountADesired,
        uint amountBDesired,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external;
    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint liquidity,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external;
    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] memory path,
        address to,
        uint deadline
    ) external;
}

interface IKodiakV3 {
    struct MintParams {
        address token0;
        address token1;
        uint24 fee;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        address recipient;
        uint256 deadline;
    }
    function mint(MintParams calldata params)
        external
        payable
        returns (
            uint256 tokenId,
            uint128 liquidity,
            uint256 amount0,
            uint256 amount1
        );
    struct IncreaseLiquidityParams {
        uint256 tokenId;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }
    function increaseLiquidity(IncreaseLiquidityParams calldata params)
        external
        payable
        returns (
            uint128 liquidity,
            uint256 amount0,
            uint256 amount1
        );
    struct DecreaseLiquidityParams {
        uint256 tokenId;
        uint128 liquidity;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }
    function decreaseLiquidity(DecreaseLiquidityParams calldata params)
        external
        payable
        returns (uint256 amount0, uint256 amount1);
    struct CollectParams {
        uint256 tokenId;
        address recipient;
        uint128 amount0Max;
        uint128 amount1Max;
    }
    function collect(CollectParams calldata params) external payable returns (uint256 amount0, uint256 amount1);
    function burn(uint256 tokenId) external payable;
}

interface IKodiakV3SwapRouter {
    struct ExactInputParams {
        bytes path;
        address recipient;
        uint256 amountIn;
        uint256 amountOutMinimum;
    }
    function exactInput(ExactInputParams memory params) external;
}

interface IKodiakV3Island {
    function token0() external view returns (address);
    function token1() external view returns (address);
    function mint(uint256 mintAmount, address receiver) external;
    function burn(uint256 burnAmount, address receiver) external;
}

interface IKodiakV3IslandFactory {
    function deployVault(
        address tokenA,
        address tokenB,
        uint24 uniFee,
        address manager,
        address managerTreasury,
        uint16 managerFee,
        int24 lowerTick,
        int24 upperTick
    ) external returns (address);
}
