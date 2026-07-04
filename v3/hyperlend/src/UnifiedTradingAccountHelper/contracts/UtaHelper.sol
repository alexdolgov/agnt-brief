// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {IPoolAddressesProvider} from "@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import {DataTypes} from "@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IPool} from "@aave/core-v3/contracts/interfaces/IPool.sol";
import {ICoreWriter} from "./interfaces/ICoreWriter.sol";
import {ICoreDepositUsdc} from './interfaces/ICoreDepositUsdc.sol';

/// @title UnifiedTradingAccountHelper
/// @author HyperLend
/// @notice Contract which allows supplying, borrowing and core-evm transfers in a single tx
contract UnifiedTradingAccountHelper is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /// @notice actions used when supplying collateral
    struct TokenAction {
        IERC20 token;
        uint256 amount;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         Constants                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    uint256 immutable VARIABLE_BORROW_RATE = 2;
    uint24  immutable SPOT_SEND_ACTION = 6;
    uint16  immutable REF_CODE = 1;

    /// @notice address of the Hyperliquid CoreWriter
    ICoreWriter constant CORE_WRITER = ICoreWriter(0x3333333333333333333333333333333333333333);

    /// @notice hyperEVM address of the USDC token
    address constant USDC = 0xb88339CB7199b77E23DB6E890353E22632Ba630f;
    /// @notice address of CoreDepositWallet for USDC bridging
    ICoreDepositUsdc public coreDepositUsdc = ICoreDepositUsdc(0x6B9E773128f453f5c2C60935Ee2DE2CBc5390A24);
    /// @notice id of HyperCore dex (0xffffffff)
    uint32 public DEX = 4294967295;

    /// @notice address of HyperLend addressesProvider contract
    address immutable addressesProvider;

    /// @notice latest block when rescueHyperCore was called
    uint256 public latestRescueBlock;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      Errors & Events                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error NativeTransferFailed();
    error ProviderZeroAddress();
    error DeadlineExpired();
    error InvalidRescueDelay();

    event OperationExecuted(address user, uint256 usdcBorrowAmount);
    event RescueTokens(address token, address to);
    event RescueHyperCore(bytes data);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          Functions                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @param _provider address of the HyperLend addressesProvider contract
    constructor(address _provider) {
        if (address(_provider) == address(0)) revert ProviderZeroAddress();
        addressesProvider = _provider;
    }

    /// @notice returns HyperLend pool contract address
    function getPool() public view returns (IPool) {
        return IPool(IPoolAddressesProvider(addressesProvider).getPool());
    }

    /// @notice used to supply collateral, borrow USDC and send it to the caller on HyperCore in one transaction
    /// @dev user must `approveDelegation` on variableDebtToken of supplied collateral before calling, so contract can borrow on their behalf
    function executeOperation(
        TokenAction[] calldata _collateralActions,
        uint256 _usdcBorrowAmount,
        uint256 _deadline
    ) external nonReentrant {
        if (block.timestamp > _deadline) revert DeadlineExpired();
        //wait at least 3 blocks after latest action, to prevent race conditions which would allow admin to drain pending hypercore funds
        //3 blocks delay is used since big and small blocks are built at the same time, before core actions are processed
        if (block.number <= latestRescueBlock + 3) revert InvalidRescueDelay();

        IPool pool = getPool();

        //supply collaterals
        for (uint256 i = 0; i < _collateralActions.length; ++i){
            uint256 amount = _collateralActions[i].amount;
            IERC20 token = _collateralActions[i].token;

            //transfer tokens from the caller & approve pool contract to spend them
            token.safeTransferFrom(msg.sender, address(this), amount);
            token.forceApprove(address(pool), type(uint256).max);

            //supply tokens on behalf of the msg.sender
            pool.supply(address(token), amount, msg.sender, 0);
        }

        //borrow USDC on behalf of the user
        pool.borrow(USDC, _usdcBorrowAmount, VARIABLE_BORROW_RATE, REF_CODE, msg.sender);

        //transfer USDC to the HyperCore
        IERC20(USDC).forceApprove(address(coreDepositUsdc), _usdcBorrowAmount);
        coreDepositUsdc.depositFor(msg.sender, _usdcBorrowAmount, DEX);

        emit OperationExecuted(msg.sender, _usdcBorrowAmount);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           Helpers                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    
    /// @notice used to rescue any funds stuck on HyperEvm
    function rescueTokens(address token, address to) external onlyOwner() {
        if (token == address(0)){
            (bool ok, ) = payable(to).call{value: address(this).balance}("");
            if (!ok) revert NativeTransferFailed();
        } else {
            IERC20(token).safeTransfer(to, IERC20(token).balanceOf(address(this)));
        }

        emit RescueTokens(token, to);
    }

    /// @notice used to rescue any funds stuck on HyperCore
    function rescueHyperCore(bytes calldata data) external onlyOwner() {
        latestRescueBlock = block.number;

        CORE_WRITER.sendRawAction(data);
        emit RescueHyperCore(data);
    }

    /// @notice used for converting evm amount to wei (hyperCore) amount
    /// @dev https://github.com/hyperliquid-dev/hyper-evm-lib/blob/main/src/common/HLConversions.sol
    function usdcEvmToWeiAmount(uint256 evmAmount) internal pure returns (uint64) {
        int8 evmExtraWeiDecimalsUsdc = -2;

        if (evmExtraWeiDecimalsUsdc > 0) {
            uint256 amount = evmAmount / (10 ** uint8(evmExtraWeiDecimalsUsdc));
            return SafeCast.toUint64(amount);
        } else if (evmExtraWeiDecimalsUsdc < 0) {
            uint256 amount = evmAmount * (10 ** uint8(-evmExtraWeiDecimalsUsdc));
            return SafeCast.toUint64(amount);
        }

        return SafeCast.toUint64(evmAmount);
    }
}
