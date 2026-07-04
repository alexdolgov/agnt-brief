// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.25;

/**
 * @author René Hochmuth
 * @author Christoph Krpoun
 * @author Vitally Marinchenko
 */

import "../OwnableMaster.sol";

import "./GenericPowerFarm.sol";
import "./PowerFarmNFTs/MinterReserver.sol";

contract GenericPowerManager is
    OwnableMaster,
    GenericPowerFarm,
    MinterReserver
{
    receive()
        external
        payable
        virtual
    {
        emit ETHReceived(
            msg.value,
            msg.sender
        );

        if (msg.sender == WETH_ADDRESS) {
            return;
        }

        if (sendingProgress == true) {
            revert GenericSendingOnGoing();
        }

        _sendValue(
            master,
            msg.value
        );
    }

    constructor(
        address _wiseLendingAddress,
        address _pendleChildTokenAddress,
        address _pendleRouter,
        address _entryAsset,
        address _pendleSy,
        address _underlyingMarket,
        address _routerStatic,
        address _dexAddress,
        uint256 _collateralFactor,
        address _powerFarmNFTs
    )
        OwnableMaster(msg.sender)
        MinterReserver(_powerFarmNFTs)
        GenericDeclarations(
            _wiseLendingAddress,
            _pendleChildTokenAddress,
            _pendleRouter,
            _entryAsset,
            _pendleSy,
            _underlyingMarket,
            _routerStatic,
            _dexAddress,
            _collateralFactor
        )
    {}

    function setSpecialDepegCase(
        bool _state
    )
        external
        virtual
        onlyMaster
    {
        specialDepegCase = _state;
    }

    function revokeCollateralFactorRole()
        public
        virtual
        onlyCollateralFactorRole
    {
        collateralFactorRole = ZERO_ADDRESS;
    }

    function setCollateralFactor(
        uint256 _newCollateralFactor
    )
        external
        override
        onlyCollateralFactorRole()
    {
        collateralFactor = _newCollateralFactor;
    }

    function changeMinDeposit(
        uint256 _newMinDeposit
    )
        external
        virtual
        onlyMaster
    {
        minDepositEthAmount = _newMinDeposit;

        emit MinDepositChange(
            _newMinDeposit,
            block.timestamp
        );
    }

    /**
     * @dev External function deactivating the power farm by
     * disableing the openPosition function. Allowing user
     * to manualy payback and withdraw.
     */
    function shutDownFarm(
        bool _state
    )
        external
        virtual
        onlyMaster
    {
        isShutdown = _state;

        emit FarmStatus(
            _state,
            block.timestamp
        );
    }

    function enterFarm(
        bytes memory _callData,
        bool _isAave,
        uint256 _amount,
        uint256 _leverage,
        uint256 _allowedSpread
    )
        public
        virtual
        routingOngoingCheck
        isActive
        updatePools
        returns (uint256)
    {
        _safeTransferFrom(
            FARM_ASSET,
            msg.sender,
            address(this),
            _amount
        );

        return _handleEnterFarm(
            _callData,
            _isAave,
            _getWiseLendingNFT(),
            _amount,
            _leverage,
            _allowedSpread
        );
    }

    function _handleEnterFarm(
        bytes memory _callData,
        bool _isAave,
        uint256 _wiseLendingNFT,
        uint256 _amount,
        uint256 _leverage,
        uint256 _allowedSpread
    )
        private
        returns (uint256)
    {
        _openPosition(
            _callData,
            _isAave,
            _wiseLendingNFT,
            _amount,
            _leverage,
            _allowedSpread
        );

        return _handleEntryFarmStorage(
            _wiseLendingNFT,
            _isAave,
            _leverage,
            _amount
        );
    }

    function _handleEntryFarmStorage(
        uint256 _wiseLendingNFT,
        bool _isAave,
        uint256 _leverage,
        uint256 _amount
    )
        internal
        returns (uint256)
    {
        uint256 keyId = _reserveKey(
            msg.sender,
            _wiseLendingNFT
        );

        isAave[_wiseLendingNFT] = _isAave;

        _storeData(
            keyId,
            _wiseLendingNFT,
            _leverage,
            _amount,
            getTokenAmountEquivalentInFarmAsset(_wiseLendingNFT),
            block.timestamp
        );

        return keyId;
    }

    function _storeData(
        uint256 _keyId,
        uint256 _wiseLendingNFT,
        uint256 _leverage,
        uint256 _amount,
        uint256 _amountAfterMintFee,
        uint256 _timestamp
    )
        internal
        virtual
    {
        FarmData memory FarmData = FarmData(
            _wiseLendingNFT,
            _leverage,
            _amount,
            _amountAfterMintFee,
            _timestamp
        );

        farmData[_keyId] = FarmData;

        emit FarmEntry(
            _keyId,
            _wiseLendingNFT,
            _leverage,
            _amount,
            _amountAfterMintFee,
            _timestamp
        );
    }

    function enterFarmETH(
        bytes memory _callData,
        bool _isAave,
        uint256 _leverage,
        uint256 _allowedSpread
    )
        external
        virtual
        payable
        routingOngoingCheck
        isActive
        updatePools
        returns (uint256)
    {
        _wrapETH(
            msg.value
        );

        return _handleEnterFarm(
            _callData,
            _isAave,
            _getWiseLendingNFT(),
            msg.value,
            _leverage,
            _allowedSpread
        );
    }

    function _getWiseLendingNFT()
        internal
        virtual
        returns (uint256)
    {
        if (availableNFTCount == 0) {

            uint256 nftId = POSITION_NFT.mintPosition();

            _registrationFarm(
                nftId
            );

            POSITION_NFT.approve(
                AAVE_HUB_ADDRESS,
                nftId
            );

            return nftId;
        }

        return availableNFTs[
            availableNFTCount--
        ];
    }

    function exitFarm(
        bytes memory _callData,
        uint256 _keyId,
        uint256 _allowedSpread,
        bool _ethBack
    )
        external
        virtual
        routingOngoingCheck
        updatePools
        onlyKeyOwner(_keyId)
    {
        uint256 wiseLendingNFT = farmingKeys[
            _keyId
        ];

        delete farmingKeys[
            _keyId
        ];

        if (reservedKeys[msg.sender] == _keyId) {
            reservedKeys[msg.sender] = 0;
        } else {
            FARMS_NFTS.burnKey(
                _keyId
            );
        }

        availableNFTs[
            ++availableNFTCount
        ] = wiseLendingNFT;

        _closingPosition(
            _callData,
            isAave[wiseLendingNFT],
            wiseLendingNFT,
            _allowedSpread,
            _ethBack
        );

        emit FarmExit(
            _keyId,
            wiseLendingNFT,
            _allowedSpread,
            block.timestamp
        );
    }

    function manuallyPaybackShares(
        uint256 _keyId,
        uint256 _paybackShares
    )
        external
        virtual
        routingOngoingCheck
        updatePools
    {
        _manuallyPaybackShares(
            farmingKeys[_keyId],
            _paybackShares
        );

        emit ManualPaybackShares(
            _keyId,
            farmingKeys[_keyId],
            _paybackShares,
            block.timestamp
        );
    }

    function changePendleRouter(
        address _newPendleRouter,
        address _newLimitRouter
    )
        external
        virtual
        onlyMaster
    {
        PENDLE_ROUTER = IPendleRouter(
            _newPendleRouter
        );

        PENDLE_LIMIT_ROUTER_ADDRESS = _newLimitRouter;

        _doApprovals(
            address(WISE_LENDING)
        );
    }

    function manuallyWithdrawShares(
        uint256 _keyId,
        uint256 _withdrawShares
    )
        external
        virtual
        routingOngoingCheck
        updatePools
        onlyKeyOwner(_keyId)
    {
        uint256 wiseLendingNFT = farmingKeys[
            _keyId
        ];

        _manuallyWithdrawShares(
            wiseLendingNFT,
            _withdrawShares
        );

        if (_checkDebtRatio(wiseLendingNFT) == false) {
            revert GenericDebtRatioTooHigh();
        }

        emit ManualWithdrawShares(
            _keyId,
            wiseLendingNFT,
            _withdrawShares,
            block.timestamp
        );
    }
}
