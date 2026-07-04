// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import '@openzeppelin/contracts/access/Ownable.sol';
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

import "../interfaces/IMinter.sol";
import "../interfaces/IPAN.sol";

contract TradeMining is Ownable, Pausable, Initializable {
    using EnumerableSet for EnumerableSet.AddressSet;
    using Counters for Counters.Counter;
    using SafeERC20 for IERC20;
    using ECDSA for bytes32;
    using ECDSA for bytes;


    IMinter public minter;
    IERC20  public PAN;
    uint public lastUpdateBlock;
    uint public PanPerBlock;

    EnumerableSet.AddressSet private operators;
    mapping(address => Counters.Counter) private nonces;

    //=========== Event ============//
    event Harvest(address _user, uint _amount, uint _nonce, address _to);
    event OperatorChange(address _operator, bool _action);
    event MinterChanged(address indexed oldMinter, address indexed newMinter);
    event PANPerBlockChanged(uint256 oldPANPerBlock, uint256 newPANPerBlock);
    //=========== Modifier ============//
    //constructor
    constructor(address _minter, address _pan, uint256 _PANPerBlock, uint256 _lastUpdateBlock) {
        PAN = IERC20(_pan);
        minter = IMinter(_minter);
        PanPerBlock = _PANPerBlock;
        lastUpdateBlock = _lastUpdateBlock;
    }

    //=========== Internal functions ============//
    function _useNonce(address _user) internal returns (uint256 current) {
        Counters.Counter storage nonce = nonces[_user];
        current = nonce.current();
        nonce.increment();
    }

    function _validateSignature(bytes memory _signature, address _user, uint _amount, uint _expire) internal returns (uint _nonce) {
        _nonce = _useNonce(_user);
        bytes32 _hash = keccak256(abi.encodePacked(_user, _amount, _nonce, _expire, address(this))).toEthSignedMessageHash();
        address _signer = _hash.recover(_signature);
        require(operators.contains(_signer), "TradeMining: !operator");
    }

    function _transferReward(address _receiver, uint256 _amount) internal {
        if (PAN.balanceOf(address(this)) <= _amount) {
            mintReward();
        }
        PAN.safeTransfer(_receiver, _amount);
    }

    //=========== External functions ============//
    function harvest(bytes memory _signature, address _user, uint _amount, uint _expire, address _to) external whenNotPaused {
        require(block.timestamp <= _expire, "TradeMining: !expire");
        require(_to != address(0), "TradeMining: !zero address");

        uint _nonce = _validateSignature(_signature, _user, _amount, _expire);
        address _receiver = msg.sender == _user ? _to : _user;
        _transferReward(_receiver, _amount);
        emit Harvest(_user, _amount, _nonce, _receiver);
    }

    function mintReward() public {
        uint256 _amount = (block.number - lastUpdateBlock) * PanPerBlock;
        minter.transfer(address(this), _amount);
        lastUpdateBlock = block.number;
    }

    //=========== View functions ============//
    function currentNonce(address _user) public view returns (uint256) {
        return nonces[_user].current();
    }

    function getOperators() external view returns (address[] memory) {
        return operators.values();
    }

    function isOperator(address _operator) external view returns (bool) {
        return operators.contains(_operator);
    }

    //=========== Restrict functions ============//
    function init(uint256 _amount) external onlyOwner initializer {
        minter.transfer(address(this), _amount);
    }

    function rescueFund(address _token, address _receiver) external onlyOwner whenPaused {
        uint256 _amount = IERC20(_token).balanceOf(address(this));
        if (_amount > 0) {
            IERC20(_token).safeTransfer(_receiver, _amount);
        }
    }

    function pause() public onlyOwner whenNotPaused {
        _pause();
    }

    function unpause() public onlyOwner whenPaused {
        _unpause();
    }

    function changeOperator(address _operator, bool _action) external onlyOwner {
        if(_action) {
            require(operators.add(_operator), "TradeMining: !added");
        } else {
            require(operators.remove(_operator), "TradeMining: !removed");
        }
        emit OperatorChange(_operator, _action);
    }

    function changeMinter(address _newMinter) external onlyOwner {
        address oldMinter = address(minter);
        minter = IMinter(_newMinter);
        emit MinterChanged(oldMinter, _newMinter);
    }

    function setPanPerBlock(uint256 _v) external onlyOwner {
        uint256 oldPANPerBlock = PanPerBlock;
        PanPerBlock = _v;
        emit PANPerBlockChanged(oldPANPerBlock, _v);
    }
}
