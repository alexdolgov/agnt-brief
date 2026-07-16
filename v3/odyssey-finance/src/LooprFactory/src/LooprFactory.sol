// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC7579Account} from "kernel/interfaces/IERC7579Account.sol";
import {ExecLib, Execution} from "kernel/utils/ExecLib.sol";
import {IKernel, IKernelFactory} from "src/interfaces/external/IKernel.sol";
import {ValidatorLib} from "kernel/utils/ValidationTypeLib.sol";
import {MODULE_TYPE_EXECUTOR} from "kernel/types/Constants.sol";
import {IValidator} from "kernel/interfaces/IERC7579Modules.sol";
import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {SwapParams} from "src/components/SwapAggregator.sol";
import {FlashLoanExecutor} from "src/executors/flash-loan/FlashLoanERC7579Executor.sol";
import {IStrategy} from "src/interfaces/IStrategy.sol";
import {PositionRegistry} from "src/PositionRegistry.sol";

/// @title LooprFactory
/// @notice Thin orchestrator for single-transaction account deployment.
///         The caller (SDK/frontend) prepares all data; the factory only:
///         1. Deploy SCA (with modules installed via initConfig)
///         2. Deploy position
///         3. SCA.execute(batch) with caller-provided executions
///         4. Transfer SCA ownership via changeRootValidator
contract LooprFactory {
    using SafeERC20 for IERC20;

    // ── Immutables ──────────────────────────────────────────────────────
    PositionRegistry public immutable POSITION_REGISTRY;
    IKernelFactory public immutable KERNEL_FACTORY;
    IValidator public immutable ECDSA_VALIDATOR;

    // ── Structs ─────────────────────────────────────────────────────────
    struct DeployParams {
        bytes32 accountSalt;
        address owner;
        address marginToken;
        uint256 marginAmount;
        uint256 strategyId;
        uint256 positionSalt;
        address[] modules;
        Execution[] executions;
    }

    struct LooprParams {
        address owner;
        bytes32 scaSalt;
        uint256 positionSalt;
        uint256 flashLoanAmount;
        uint256 marginAmount;
        address[] modules;
        uint256 strategyId;
        address fleExecutor;
        SwapParams zapInParams;
        SwapParams zapOutParams;
        bytes positionParams;
        bytes pushParams;
    }

    // ── Errors ──────────────────────────────────────────────────────────
    error InvalidModule();
    error FlashloanTokenMismatch();
    error InvalidZapInAmount();
    error InvalidZapOutAmount();
    error InvalidZapInTokenIn();
    error InvalidZapInTokenOut();
    error InvalidZapOutTokenIn();
    error InvalidZapOutTokenOut();

    // ── Constructor ─────────────────────────────────────────────────────
    constructor(IKernelFactory kernelFactory_, IValidator ecdsaValidator_, PositionRegistry positionRegistry_) {
        KERNEL_FACTORY = kernelFactory_;
        ECDSA_VALIDATOR = ecdsaValidator_;
        POSITION_REGISTRY = positionRegistry_;
    }

    // ── External view ───────────────────────────────────────────────────

    function getAddress(address[] calldata modules_, bytes32 salt_) external view returns (address) {
        return KERNEL_FACTORY.getAddress(_initData(modules_), salt_);
    }

    // ── External mutating ───────────────────────────────────────────────

    function deployAndCall(
        DeployParams calldata params_
    ) external returns (address _smartAccount, address _position, address _validator) {
        // Step 1: Deploy SCA with modules installed via initConfig
        _smartAccount = KERNEL_FACTORY.createAccount(_initData(params_.modules), params_.accountSalt);

        // Step 2: Deploy position
        _position = POSITION_REGISTRY.deployPosition(_smartAccount, params_.strategyId, params_.positionSalt);

        // Step 3: Transfer margin to position
        if (params_.marginToken != address(0) && params_.marginAmount > 0) {
            IERC20(params_.marginToken).safeTransferFrom(msg.sender, _position, params_.marginAmount);
        }

        // Step 4: Execute caller-provided batch
        IERC7579Account(_smartAccount).execute(ExecLib.encodeSimpleBatch(), ExecLib.encodeBatch(params_.executions));

        // Step 5: Transfer SCA ownership
        _validator = _transferOwnership(_smartAccount, params_.owner);
    }

    function deployAndOpen(
        LooprParams calldata params_
    ) external returns (address _smartAccount, address _validator, address _position) {
        if (params_.zapInParams.tokenIn != params_.zapOutParams.tokenOut) revert FlashloanTokenMismatch();
        if (params_.zapInParams.amountIn == 0) revert InvalidZapInAmount();
        if (params_.zapOutParams.amountIn == 0) revert InvalidZapOutAmount();
        if (params_.zapInParams.tokenIn == IERC20(address(0))) revert InvalidZapInTokenIn();
        if (params_.zapInParams.tokenOut == IERC20(address(0))) revert InvalidZapInTokenOut();
        if (params_.zapOutParams.tokenIn == IERC20(address(0))) revert InvalidZapOutTokenIn();
        if (params_.zapOutParams.tokenOut == IERC20(address(0))) revert InvalidZapOutTokenOut();

        // Step 1: Deploy SCA with modules installed via initConfig
        _smartAccount = KERNEL_FACTORY.createAccount(_initData(params_.modules), params_.scaSalt);

        IERC20 _depositToken = params_.zapInParams.tokenOut;
        IERC20 _borrowToken = params_.zapOutParams.tokenIn;

        // Step 2: Deploy position
        _position = POSITION_REGISTRY.deployPosition(_smartAccount, params_.strategyId, params_.positionSalt);

        // Step 3: Send margin amount to position
        _depositToken.safeTransferFrom(msg.sender, address(_position), params_.marginAmount);

        // Step 4: Prepare flash loan logic
        Execution[] memory openAndTransferOut = new Execution[](2);
        openAndTransferOut[0] = Execution({
            target: _position,
            value: 0,
            callData: abi.encodeCall(IStrategy.open, (params_.positionParams, params_.pushParams))
        });
        openAndTransferOut[1] = Execution({
            target: _position,
            value: 0,
            callData: abi.encodeWithSignature(
                "transferOut(address,address,uint256,(uint8,address,address,uint256,address,bytes))",
                _borrowToken,
                params_.fleExecutor,
                params_.zapOutParams.amountIn,
                params_.zapOutParams
            )
        });

        // Step 5: Execute flash-loan and opening
        IERC7579Account(_smartAccount).execute(
            ExecLib.encodeSimpleSingle(),
            ExecLib.encodeSingle({
                target: address(params_.fleExecutor),
                value: 0,
                callData: abi.encodeCall(
                    FlashLoanExecutor.start,
                    (_depositToken, params_.flashLoanAmount, _position, params_.zapInParams, openAndTransferOut)
                )
            })
        );

        // Step 6: Transfer SCA ownership
        _validator = _transferOwnership(_smartAccount, params_.owner);
    }

    // ── Private ─────────────────────────────────────────────────────────

    function _initData(address[] memory modules_) private view returns (bytes memory) {
        bytes[] memory initConfig = new bytes[](modules_.length);
        for (uint256 i; i < modules_.length; i++) {
            if (modules_[i] == address(0)) revert InvalidModule();
            initConfig[i] = abi.encodeWithSelector(
                IKernel.installModule.selector,
                MODULE_TYPE_EXECUTOR,
                modules_[i],
                abi.encodePacked(address(0), abi.encode(abi.encodePacked("executorData"), abi.encodePacked("")))
            );
        }

        return
            abi.encodeWithSelector(
                IKernel.initialize.selector,
                ValidatorLib.validatorToIdentifier(IValidator(ECDSA_VALIDATOR)),
                address(0),
                abi.encodePacked(address(this)),
                hex"",
                initConfig
            );
    }

    function _transferOwnership(address smartAccount_, address owner_) private returns (address validator_) {
        validator_ = address(new ERC1967Proxy(address(ECDSA_VALIDATOR), hex""));
        IKernel(smartAccount_).changeRootValidator(
            ValidatorLib.validatorToIdentifier(IValidator(validator_)),
            address(0),
            abi.encodePacked(owner_),
            hex""
        );
    }
}
