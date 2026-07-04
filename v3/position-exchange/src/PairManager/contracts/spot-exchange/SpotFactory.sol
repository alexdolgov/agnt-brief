pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "../interfaces/ISpotFactory.sol";
import "./PairManager.sol";
import "./libraries/types/SpotFactoryStorage.sol";
import "./implement/NoDelegateCall.sol";

contract SpotFactory is
    ISpotFactory,
    SpotFactoryStorage,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    OwnableUpgradeable
{
    function initialize(address _spotHouse) external initializer {
        __ReentrancyGuard_init();
        __Ownable_init();
        __Pausable_init();

        spotHouse = _spotHouse;
    }

    function createPairManager(
        address _quoteAsset,
        address _baseAsset,
        uint256 _basisPoint,
        uint256 _BASE_BASIC_POINT,
        uint128 _maxFindingWordsIndex,
        uint128 _initialPip,
        uint64 _expireTime
    ) external override whenNotPaused {
        revert("Not available");
        require(
            _quoteAsset != address(0) && _baseAsset != address(0),
            Errors.VL_EMPTY_ADDRESS
        );
        require(_quoteAsset != _baseAsset, Errors.VL_MUST_IDENTICAL_ADDRESSES);
        require(
            pathPairManagers[_baseAsset][_quoteAsset] == address(0),
            Errors.VL_SPOT_MANGER_EXITS
        );

        address _pairManager;
        bytes memory bytecode = type(PairManager).creationCode;
        bytes32 salt = keccak256(
            abi.encodePacked(_baseAsset, _quoteAsset, address(this))
        );
        assembly {
            _pairManager := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }

        IPairManager(_pairManager).initializeFactory(
            _quoteAsset,
            _baseAsset,
            spotHouse,
            _basisPoint,
            _BASE_BASIC_POINT,
            _maxFindingWordsIndex,
            _initialPip,
            _expireTime,
            msg.sender,
            liquidityPool
        );

        // save
        pathPairManagers[_baseAsset][_quoteAsset] = _pairManager;

        allPairManager[_pairManager] = Pair({
            BaseAsset: _baseAsset,
            QuoteAsset: _quoteAsset
        });

        emit PairManagerCreated(_pairManager);
    }

    function getPairManager(address quoteAsset, address baseAsset)
        external
        view
        override
        returns (address spotManager)
    {
        return pathPairManagers[baseAsset][quoteAsset];
    }

    function getQuoteAndBase(address pairManager)
        external
        view
        override
        returns (Pair memory)
    {
        return allPairManager[pairManager];
    }

    //------------------------------------------------------------------------------------------------------------------
    // ONLY OWNER FUNCTIONS
    //------------------------------------------------------------------------------------------------------------------

    function setLiquidityPool(address _liquidityPool) external onlyOwner {
        require(_liquidityPool != address(0), Errors.VL_EMPTY_ADDRESS);
        liquidityPool = _liquidityPool;
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function addPairManagerManual(
        address _pairManager,
        address _baseAsset,
        address _quoteAsset
    ) external onlyOwner {
        require(
            _quoteAsset != address(0) && _baseAsset != address(0),
            Errors.VL_EMPTY_ADDRESS
        );
        require(_quoteAsset != _baseAsset, Errors.VL_MUST_IDENTICAL_ADDRESSES);
        require(
            pathPairManagers[_baseAsset][_quoteAsset] == address(0),
            Errors.VL_SPOT_MANGER_EXITS
        );

        // save
        pathPairManagers[_baseAsset][_quoteAsset] = _pairManager;

        allPairManager[_pairManager] = Pair({
            BaseAsset: _baseAsset,
            QuoteAsset: _quoteAsset
        });

        emit PairManagerCreated(_pairManager);
    }

}
