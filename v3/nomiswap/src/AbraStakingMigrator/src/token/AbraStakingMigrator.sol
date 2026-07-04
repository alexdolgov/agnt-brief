// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import {IAbraStaking} from "../interfaces/abra/IAbraStaking.sol";

interface IAbraStakingV1 {
    function unstakeByMigrator(
        address staker,
        uint256 lockupId,
        address to
    ) external;
}
interface IBurnableERC20 {
    function burn(uint amount) external;
}

interface UniswapV3Pool {
    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes calldata data
    ) external returns (int256 amount0, int256 amount1);

    function token0() external view returns (address);
    function token1() external view returns (address);
}

contract AbraStakingMigrator is OwnableUpgradeable, UUPSUpgradeable {
    using SafeERC20 for IERC20;

    address public immutable stakingV1;
    address public immutable stakingV2;
    address public immutable uniswapV3Pool;
    address public immutable abra;
    bool public immutable zeroForOne;
    uint160 public immutable sqrtPriceLimitX96;
    
    bytes32 public root;

    event Unstaked(
        address indexed staker,
        uint256 lockupId,
        uint256 originEnd,
        uint256 penaltyAmount // original rebate amount of Abra
    );

    event UnstakedAndBurned(
        address indexed staker,
        uint256 lockupId,
        uint256 originEnd,
        uint256 amount
    );

    event Migrated(
        address indexed staker,
        uint256 lockupId
    );

    error InvalidProof();
    error UnstakedAlready();
    error InvalidDuration();

    constructor(address _stakingV1, address _stakingV2, address _uniswapV3Pool) {
        stakingV1 = _stakingV1;
        stakingV2 = _stakingV2;
        uniswapV3Pool = _uniswapV3Pool;

        address _abra = IAbraStaking(stakingV1).abra();
        abra = _abra;
        address _usdt = UniswapV3Pool(_uniswapV3Pool).token0();
        if (_usdt == _abra) _usdt = UniswapV3Pool(_uniswapV3Pool).token1();
        zeroForOne = _abra < _usdt ? true : false;

        // TickMath.MIN_SQRT_RATIO + 1 or TickMath.MAX_SQRT_RATIO - 1
        sqrtPriceLimitX96 = _abra < _usdt ? 4295128739 + 1 : 1461446703485210103287273052203988822378723970342 - 1;

        _disableInitializers();
    }

    function initialize(address owner) public initializer {
        __Ownable_init(owner);
    }

    /// @dev intentionally using `onlyOwner` for internal function
    function _authorizeUpgrade(address) internal override onlyOwner {}

    function setRoot(bytes32 _root) external onlyOwner {
        root = _root;
    }

    function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external {
        require(msg.sender == uniswapV3Pool, "ASM: CallbackSender");
        uint256 minAmountOut = abi.decode(data, (uint256));
        require(zeroForOne ? uint(amount1Delta * -1) > minAmountOut : uint(amount0Delta * -1) > minAmountOut, "ASM: minAmountOut");
        IERC20(abra).transfer(uniswapV3Pool, uint(zeroForOne ? amount0Delta : amount1Delta));
    }

    function unstake(
        bytes32[] memory proof,
        uint256 lockupIndex,
        uint256 rebate,
        uint256 deadline,
        uint256 minAmountOut // usdt amount
    ) external returns (uint256 usdtAmountOut) {
        verify(proof, msg.sender, lockupIndex, rebate);
        require(deadline >= block.timestamp, "ASM: deadline");
        (uint256 amount, uint128 end,) = IAbraStaking(stakingV1).lockups(
            msg.sender,
            lockupIndex
        );
        if (end == 0) revert UnstakedAlready();

        IAbraStakingV1(stakingV1).unstakeByMigrator(
            msg.sender,
            lockupIndex,
            address(this)
        );
        if (end <= block.timestamp) rebate = 0;
        emit Unstaked(msg.sender, lockupIndex, end, rebate);
        usdtAmountOut = swap(amount - rebate, minAmountOut);
        IBurnableERC20(abra).burn(rebate);
    }

    function unstakeAndBurn(uint256 lockupIndex) external {
        (uint256 amount, uint128 end,) = IAbraStaking(stakingV1).lockups(
            msg.sender,
            lockupIndex
        );
        if (end == 0) revert UnstakedAlready();

        IAbraStakingV1(stakingV1).unstakeByMigrator(
            msg.sender,
            lockupIndex,
            address(this)
        );
        emit UnstakedAndBurned(msg.sender, lockupIndex, end, amount);
        IBurnableERC20(abra).burn(amount);
    }

    function migrate(
        uint256 lockupIndex,
        uint256 newDuration
    ) external {
        (uint256 amount, uint128 end,) = IAbraStaking(stakingV1).lockups(
            msg.sender,
            lockupIndex
        );
        if (end == 0) revert UnstakedAlready();
        if (block.timestamp + newDuration < end) revert InvalidDuration();

        IAbraStakingV1(stakingV1).unstakeByMigrator(
            msg.sender,
            lockupIndex,
            address(this)
        );
        emit Unstaked(msg.sender, lockupIndex, end, 0);
        
        IERC20(abra).approve(stakingV2, amount);
        uint256 lockupId = IAbraStaking(stakingV2).stake(
            amount,
            newDuration,
            msg.sender
        );
        emit Migrated(msg.sender, lockupId);
    }

    function verify(
        bytes32[] memory proof,
        address staker,
        uint256 lockupIndex,
        uint256 rebate
    ) public view {
        bytes32 leaf = keccak256(
            bytes.concat(keccak256(abi.encode(staker, lockupIndex, rebate)))
        );
        if (!MerkleProof.verify(proof, root, leaf)) revert InvalidProof();
    }

    function swap(uint totalAbra, uint minAmountOut) private returns (uint256 usdtAmountOut) {
        (int256 amount0, int256 amount1) = UniswapV3Pool(uniswapV3Pool).swap(msg.sender, zeroForOne, int256(totalAbra), sqrtPriceLimitX96, abi.encode(minAmountOut));
        usdtAmountOut = uint((zeroForOne ? amount1 : amount0) * -1);
    }

    function getRecoverableAmount(address tokenAddress)
        internal
        view
        virtual
        returns (uint256)
    {
        if (tokenAddress == address(0)) return address(this).balance;
        else return IERC20(tokenAddress).balanceOf(address(this));
    }

    /**
     @param tokenAddress ERC20 token's address to recover or address(0) to recover ETH
     @param amount to recover from contract's address
     @param to address to receive tokens from the contract
     */
    function recoverFunds(
        address tokenAddress,
        uint256 amount,
        address to
    ) external onlyOwner {
        uint256 recoverableAmount = getRecoverableAmount(tokenAddress);
        require(
            amount <= recoverableAmount,
            "RecoverableByOwner: RECOVERABLE_AMOUNT_NOT_ENOUGH"
        );
        if (tokenAddress == address(0)) recoverEth(amount, to);
        else recoverErc20(tokenAddress, amount, to);
    }

    function recoverEth(uint256 amount, address to) private {
        address payable toPayable = payable(to);
        toPayable.transfer(amount);
    }

    function recoverErc20(
        address tokenAddress,
        uint256 amount,
        address to
    ) private {
        IERC20(tokenAddress).safeTransfer(to, amount);
    }

}
