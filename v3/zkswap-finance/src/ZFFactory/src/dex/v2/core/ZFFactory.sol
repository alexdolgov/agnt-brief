// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity =0.5.16;

import './ZFPair.sol';
import './interfaces/IZFPair.sol';
import './interfaces/IZFFactory.sol';

contract ZFFactory is IZFFactory {
    bytes32 public constant INIT_CODE_PAIR_HASH = keccak256(abi.encodePacked(type(ZFPair).creationCode));

    /// @dev Address of fee manager
    address public feeTo;
    /// @dev Who can set the address for fee manager
    address public feeToSetter;

    /// @dev Returns pair for tokens, address sorting is not required
    mapping(address => mapping(address => address)) public getPair;
    /// @dev All existing pairs
    address[] public allPairs;

    /// @dev Swap fee in basis points (1 basis point = 0.01%)
    /// @dev 20 = 0.2%, 100 = 1%, 1000 = 10%
    uint16 public swapFee = 20; // 0.2%, in 10000 precision

    /// @dev Protocol fee as percentage of swap fee, in basis points
    /// @dev default 3500 = 35% of swap fee goes to protocol
    uint16 public protocolFee = 3200;

    // ----- EVENTS -----

    /// @dev Emitted when a new pair is created
    event PairCreated(address indexed token0, address indexed token1, address pair, uint allPairsLength);

    /// @dev Emitted when feeTo is updated
    event FeeToSet(address indexed feeTo);

    /// @dev Emitted when feeToSetter is updated
    event FeeToSetterSet(address indexed feeToSetter);

    /// @dev Emitted when swap fee is updated
    event SwapFeeSet(uint16 newSwapFee);

    /// @dev Emitted when protocol fee is updated
    event ProtocolFeeSet(uint16 newProtocolFee);

    /// @dev Emitted when swap fee override is set for a pair
    event SwapFeeOverrideSet(address indexed pair, uint16 swapFeeOverride);

    /// @dev Emitted when protocol fee override is set for a pair
    event ProtocolFeeOverrideSet(address indexed pair, uint16 protocolFeeOverride);


    modifier onlyFeeToSetter() {
        require(msg.sender == feeToSetter, "ZF: FORBIDDEN");
        _;
    }

    constructor(address _feeToSetter) public {
        feeToSetter = _feeToSetter;
    }

    /// @dev Returns the length of all pairs
    function allPairsLength() external view returns (uint) {
        return allPairs.length;
    }

    function createPair(address tokenA, address tokenB) external returns (address pair) {
        require(tokenA != tokenB, "ZF: IDENTICAL_ADDRESSES");
        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), "ZF: ZERO_ADDRESS");
        require(getPair[token0][token1] == address(0), "ZF: PAIR_EXISTS"); // single check is sufficient
        bytes memory bytecode = type(ZFPair).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(token0, token1));
        assembly {
            pair := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }
        require(pair != address(0), "ZF: FAILED_TO_CREATE_PAIR");
        IZFPair(pair).initialize(token0, token1);
        getPair[token0][token1] = pair;
        getPair[token1][token0] = pair; // populate mapping in the reverse direction
        allPairs.push(pair);
        emit PairCreated(token0, token1, pair, allPairs.length);
    }



    /// @dev Sets the address of fee manager
    function setFeeTo(address _feeTo) external onlyFeeToSetter {
        feeTo = _feeTo;
        emit FeeToSet(_feeTo);
    }

    /// @dev Sets swap fee base point
    function setSwapFee(uint16 _newFee) external onlyFeeToSetter {
        require(_newFee <= 1000, 'ZF: SWAP_FEE_TOO_HIGH'); // max 10%
        swapFee = _newFee;
        emit SwapFeeSet(_newFee);
    }

    /// @dev Sets protocol fee 
    function setProtocolFee(uint16 _newFee) external onlyFeeToSetter {
        require(_newFee <= 10000, 'ZF: INVALID_PROTOCOL_FEE');
        protocolFee = _newFee;
        emit ProtocolFeeSet(_newFee);
    }

    /// @dev Sets the address of setter for fee manager
    function setFeeToSetter(address _feeToSetter) external onlyFeeToSetter {
        feeToSetter = _feeToSetter;
        emit FeeToSetterSet(_feeToSetter);
    }


    /// @dev Sets swap fee point for a pair
    function setSwapFeeOverride(address _pair, uint16 _swapFeeOverride) external onlyFeeToSetter {
        ZFPair(_pair).setSwapFeeOverride(_swapFeeOverride);
        emit SwapFeeOverrideSet(_pair, _swapFeeOverride);
    }

    /// @dev Sets protocol fee for a specific pair
    function setProtocolFeeOverride(address _pair, uint16 _protocolFeeOverride) external onlyFeeToSetter {
        ZFPair(_pair).setProtocolFeeOverride(_protocolFeeOverride);
        emit ProtocolFeeOverrideSet(_pair, _protocolFeeOverride);
    }
}