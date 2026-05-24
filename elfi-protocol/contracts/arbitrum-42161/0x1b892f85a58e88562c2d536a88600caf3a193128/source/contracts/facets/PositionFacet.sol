// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "../interfaces/IPosition.sol";
import "../interfaces/IAccount.sol";
import "../process/AssetsProcess.sol";
import "../process/DecreasePositionProcess.sol";
import "../process/PositionMarginProcess.sol";
import "../process/GasProcess.sol";
import "../process/ConfigProcess.sol";
import "../process/MarketProcess.sol";
import "../storage/UuidCreator.sol";
import "../storage/RoleAccessControl.sol";
import "../storage/AppConfig.sol";
import "../utils/ReentrancyGuard.sol";

/// @title PositionFacet
/// @dev Contract for handling position
contract PositionFacet is IPosition, ReentrancyGuard {
    using Account for Account.Props;
    using DecreasePositionProcess for Position.Props;
    using Position for Position.Props;

    bytes32 constant AUTO_REDUCE_ID_KEY = keccak256("AUTO_REDUCE_ID_KEY");

    /// @dev creates and stores an position margin change request
    /// @param params IPosition.UpdatePositionMarginParams
    function createUpdatePositionMarginRequest(UpdatePositionMarginParams calldata params) external payable override nonReentrant {
        if (params.updateMarginAmount == 0) {
            revert Errors.AmountZeroNotAllowed();
        }

        if (params.isNativeToken) {
            address wrapperToken = AppConfig.getChainConfig().wrapperToken;
            require(params.marginToken == wrapperToken, "Margin token is invalid!");
        }

        address account = msg.sender;
        Account.Props storage accountProps = Account.load(account);
        if (!accountProps.hasPosition(params.positionKey)) {
            revert Errors.PositionNotExists();
        }
        Position.Props storage position = Position.load(params.positionKey);
        position.checkExists();
        if (position.isCrossMargin) {
            revert Errors.OnlyIsolateSupported();
        }
        if (params.isAdd) {
            require(!params.isNativeToken || msg.value == params.updateMarginAmount, "Deposit eth amount error!");
            AssetsProcess.depositToVault(
                AssetsProcess.DepositParams(
                    account,
                    params.marginToken,
                    params.updateMarginAmount,
                    AssetsProcess.DepositFrom.ORDER,
                    params.isNativeToken
                )
            );
        }

        (uint256 updateMarginAmount, bool isExecutionFeeFromTradeVault) = _validateUpdateMarginExecutionFee(
            accountProps,
            params
        );

        if (params.isAdd && updateMarginAmount == 0) {
            revert Errors.AmountZeroNotAllowed();
        }

        PositionMarginProcess.createUpdatePositionMarginRequest(
            account,
            params,
            updateMarginAmount,
            isExecutionFeeFromTradeVault
        );
    }

    /// @dev executes the given position margin request
    /// @param requestId the unique id of the request
    /// @param oracles OracleProcess.OracleParam[]
    function executeUpdatePositionMarginRequest(
        uint256 requestId,
        OracleProcess.OracleParam[] calldata oracles
    ) external override nonReentrant {
        uint256 startGas = gasleft();
        RoleAccessControl.checkRole(RoleAccessControl.ROLE_KEEPER);
        UpdatePositionMargin.Request memory request = UpdatePositionMargin.get(requestId);
        if (request.account == address(0)) {
            revert Errors.UpdatePositionMarginRequestNotExists();
        }
        OracleProcess.setOraclePrice(oracles);
        PositionMarginProcess.updatePositionMargin(requestId, request);
        OracleProcess.clearOraclePrice();
        GasProcess.processExecutionFee(
            GasProcess.PayExecutionFeeParams(
                request.isExecutionFeeFromTradeVault
                    ? IVault(address(this)).getTradeVaultAddress()
                    : IVault(address(this)).getPortfolioVaultAddress(),
                request.executionFee,
                startGas,
                msg.sender,
                request.account
            )
        );
    }

    /// @dev cancels the given request
    /// @param requestId the unique id of the request
    /// @param reasonCode the reason for request cancellation
    function cancelUpdatePositionMarginRequest(uint256 requestId, bytes32 reasonCode) external override nonReentrant {
        uint256 startGas = gasleft();
        RoleAccessControl.checkRole(RoleAccessControl.ROLE_KEEPER);
        UpdatePositionMargin.Request memory request = UpdatePositionMargin.get(requestId);
        if (request.account == address(0)) {
            revert Errors.UpdatePositionMarginRequestNotExists();
        }
        PositionMarginProcess.cancelUpdatePositionMarginRequest(requestId, request, reasonCode);
        GasProcess.processExecutionFee(
            GasProcess.PayExecutionFeeParams(
                request.isExecutionFeeFromTradeVault
                    ? IVault(address(this)).getTradeVaultAddress()
                    : IVault(address(this)).getPortfolioVaultAddress(),
                request.executionFee,
                startGas,
                msg.sender,
                request.account
            )
        );
    }

    /// @dev creates and stores an position leverage change request
    /// @param params IPosition.UpdateLeverageParams
    function createUpdateLeverageRequest(UpdateLeverageParams calldata params) external payable override nonReentrant {
        AppConfig.SymbolConfig memory symbolConfig = ConfigProcess.getSymbolConfig(params.symbol);
        Symbol.Props memory symbolProps = Symbol.load(params.symbol);
        if (symbolProps.code.length == 0) {
            revert Errors.SymbolNotExists();
        }
        if (symbolProps.status != Symbol.Status.OPEN) {
            revert Errors.SymbolStatusInvalid(params.symbol);
        }
        if (params.leverage > symbolConfig.maxLeverage || params.leverage <= 1 * CalUtils.RATE_PRECISION) {
            revert Errors.LeverageInvalid(params.symbol, params.leverage);
        }
        address account = msg.sender;
        Account.Props storage accountProps = Account.load(account);

        if (params.addMarginAmount > 0 && !params.isCrossMargin) {
            require(!params.isNativeToken || msg.value == params.addMarginAmount, "Deposit eth amount error!");
            AssetsProcess.depositToVault(
                AssetsProcess.DepositParams(
                    account,
                    params.marginToken,
                    params.addMarginAmount,
                    AssetsProcess.DepositFrom.ORDER,
                    params.isNativeToken
                )
            );
        }

        (uint256 addMarginAmount, bool isExecutionFeeFromTradeVault) = _validateUpdateLeverageExecutionFee(
            accountProps,
            params
        );

        PositionMarginProcess.createUpdateLeverageRequest(
            account,
            params,
            addMarginAmount,
            isExecutionFeeFromTradeVault
        );
    }

    /// @dev executes the given position leverage changed request
    /// @param requestId the unique id of the request
    /// @param oracles OracleProcess.OracleParam[]
    function executeUpdateLeverageRequest(
        uint256 requestId,
        OracleProcess.OracleParam[] calldata oracles
    ) external override nonReentrant {
        uint256 startGas = gasleft();
        RoleAccessControl.checkRole(RoleAccessControl.ROLE_KEEPER);
        UpdateLeverage.Request memory request = UpdateLeverage.get(requestId);
        if (request.account == address(0)) {
            revert Errors.UpdateLeverageRequestNotExists();
        }
        OracleProcess.setOraclePrice(oracles);
        PositionMarginProcess.updatePositionLeverage(requestId, request);
        OracleProcess.clearOraclePrice();
        GasProcess.processExecutionFee(
            GasProcess.PayExecutionFeeParams(
                request.isExecutionFeeFromTradeVault
                    ? IVault(address(this)).getTradeVaultAddress()
                    : IVault(address(this)).getPortfolioVaultAddress(),
                request.executionFee,
                startGas,
                msg.sender,
                request.account
            )
        );
    }

    /// @dev cancels the given request
    /// @param requestId the unique id of the request
    /// @param reasonCode the reason for request cancellation
    function cancelUpdateLeverageRequest(uint256 requestId, bytes32 reasonCode) external override nonReentrant {
        uint256 startGas = gasleft();
        RoleAccessControl.checkRole(RoleAccessControl.ROLE_KEEPER);
        UpdateLeverage.Request memory request = UpdateLeverage.get(requestId);
        if (request.account == address(0)) {
            revert Errors.UpdateLeverageRequestNotExists();
        }
        PositionMarginProcess.cancelUpdateLeverageRequest(requestId, request, reasonCode);
        GasProcess.processExecutionFee(
            GasProcess.PayExecutionFeeParams(
                request.isExecutionFeeFromTradeVault
                    ? IVault(address(this)).getTradeVaultAddress()
                    : IVault(address(this)).getPortfolioVaultAddress(),
                request.executionFee,
                startGas,
                msg.sender,
                request.account
            )
        );
    }

    /// @dev auto reduce positions
    /// when the risk rate of the Pool reaches the upper limit, the keeper will trigger automatic deleveraging of the user's position to ensure that the user's earnings can be covered.
    ///
    /// @param positionKeys a set of keys for automatic deleveraging
    function autoReducePositions(
        bytes32[] calldata positionKeys,
        OracleProcess.OracleParam[] calldata oracles
    ) external override nonReentrant {
        uint256 startGas = gasleft();
        RoleAccessControl.checkRole(RoleAccessControl.ROLE_KEEPER);
        OracleProcess.setOraclePrice(oracles);
        uint256 requestId = UuidCreator.nextId(AUTO_REDUCE_ID_KEY);

        for (uint256 i; i < positionKeys.length; i++) {
            Position.Props storage position = Position.load(positionKeys[i]);

            position.checkExists();
            Symbol.Props memory symbolProps = Symbol.load(position.symbol);

            MarketProcess.updateMarketFundingFeeRate(position.symbol);
            MarketProcess.updatePoolBorrowingFeeRate(symbolProps.stakeToken, position.isLong, position.marginToken);

            position.decreasePosition(
                DecreasePositionProcess.DecreasePositionParams(
                    requestId,
                    position.symbol,
                    false,
                    position.marginToken,
                    position.qty,
                    OracleProcess.getLatestUsdUintPrice(position.indexToken, position.isLong)
                )
            );
        }
        OracleProcess.clearOraclePrice();
        GasProcess.addLossExecutionFee(startGas);
    }

    function getAllPositions(address account) external view override returns (PositionInfo[] memory) {
        Account.Props storage accountInfo = Account.load(account);
        if (!accountInfo.isExists()) {
            PositionInfo[] memory result;
            return result;
        }
        bytes32[] memory positionKeys = accountInfo.getAllPosition();
        PositionInfo[] memory positions = new PositionInfo[](positionKeys.length);
        for (uint256 i; i < positionKeys.length; i++) {
            Position.Props storage position = Position.load(positionKeys[i]);
            positions[i].position = position;
            positions[i].currentTimestamp = ChainUtils.currentTimestamp();
        }
        return positions;
    }

    function getSinglePosition(
        address account,
        bytes32 symbol,
        address marginToken,
        bool isCrossMargin
    ) external pure override returns (Position.Props memory) {
        return Position.load(account, symbol, marginToken, isCrossMargin);
    }

    function _validateUpdateMarginExecutionFee(
        Account.Props storage accountProps,
        UpdatePositionMarginParams calldata params
    ) internal returns (uint256, bool) {
        AppConfig.ChainConfig memory chainConfig = AppConfig.getChainConfig();
        GasProcess.validateExecutionFeeLimit(params.executionFee, chainConfig.positionUpdateMarginGasFeeLimit);
        if (params.isNativeToken && params.isAdd && params.updateMarginAmount >= params.executionFee) {
            return (params.updateMarginAmount - params.executionFee, true);
        }
        require(msg.value == params.executionFee, "update margin with execution fee error!");
        AssetsProcess.depositToVault(
            AssetsProcess.DepositParams(
                accountProps.owner,
                chainConfig.wrapperToken,
                params.executionFee,
                AssetsProcess.DepositFrom.ORDER,
                true
            )
        );
        return (params.updateMarginAmount, true);
    }

    function _validateUpdateLeverageExecutionFee(
        Account.Props storage accountProps,
        UpdateLeverageParams calldata params
    ) internal returns (uint256, bool) {
        AppConfig.ChainConfig memory chainConfig = AppConfig.getChainConfig();
        GasProcess.validateExecutionFeeLimit(params.executionFee, chainConfig.positionUpdateLeverageGasFeeLimit);
        if (params.isNativeToken && params.addMarginAmount >= params.executionFee && !params.isCrossMargin) {
            return (params.addMarginAmount - params.executionFee, true);
        }
        require(msg.value == params.executionFee, "update leverage with execution fee error!");
        AssetsProcess.depositToVault(
            AssetsProcess.DepositParams(
                accountProps.owner,
                chainConfig.wrapperToken,
                params.executionFee,
                params.isCrossMargin ? AssetsProcess.DepositFrom.MANUAL : AssetsProcess.DepositFrom.ORDER,
                true
            )
        );
        return (params.addMarginAmount, !params.isCrossMargin);
    }
}
