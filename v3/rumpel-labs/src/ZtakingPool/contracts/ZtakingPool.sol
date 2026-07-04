// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";


import "./interface/IMigrator.sol";
import "./interface/IZtakingPool.sol";

/// @title Ztaking Pool
/// @notice A staking pool for liquid restaking token holders which rewards stakers with points from multiple platforms
contract ZtakingPool is IZtakingPool, Ownable, Pausable {

    using SafeERC20 for IERC20;

    // (tokenAddress => isAllowedForStaking)
    mapping(address => bool) public tokenAllowlist ;

    // (tokenAddress => stakerAddress => stakedAmount)
    mapping(address => mapping(address => uint256)) public balance ;

    // Next eventId to emit
    uint256 private eventId ;

    // Required signer for the migration message
    address public zircuitSigner;

    constructor(address _signer, address[] memory tokensAllowed) payable Ownable(msg.sender) {
        if (_signer == address(0)) revert SignerCannotBeZeroAddress();

        zircuitSigner = _signer;
        for(uint256 i; i < tokensAllowed.length; ){
            if (tokensAllowed[i] == address(0)) revert TokenCannotBeZeroAddress();
            tokenAllowlist[tokensAllowed[i]] = true;
            unchecked{++i;}
        }
    }

    /*//////////////////////////////////////////////////////////////
                            Staker Functions
    //////////////////////////////////////////////////////////////*/
    

    function deposit(address _token, uint256 _amount) whenNotPaused external {
        if (_amount == 0) revert DepositAmountCannotBeZero();

        if (!tokenAllowlist[_token]) revert TokenNotAllowedForStaking();

        balance[_token][msg.sender] += _amount;

        emit Deposit(eventId, msg.sender, _token, _amount);
        ++eventId;

        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
        
    }

    function withdraw(address _token, uint256 _amount) external {
        if (_amount == 0) revert WithdrawAmountCannotBeZero();

        balance[_token][msg.sender] -= _amount; //Will underfow if the staker has insufficient balance
        emit Withdraw(eventId, msg.sender, _token, _amount);
        ++eventId;

        IERC20(_token).safeTransfer(msg.sender, _amount);
    }

    function migrate(
        address[] calldata  _tokens, 
        address _migratorContract, 
        address _destination, 
        uint256 _signatureExpiry, 
        bytes calldata _authorizationSignatureFromZircuit
    ) external { 

        uint256[] memory _amounts = new uint256[](_tokens.length);

        //checks for-loop (validation checks)
        for(uint256 i; i < _tokens.length; ){
            _amounts[i] = balance[_tokens[i]][msg.sender];
            if (_amounts[i] == 0) revert UserDoesNotHaveStake();
            unchecked{++i;}
        }

        if (block.timestamp >= _signatureExpiry) revert SignatureExpired();// allows us to invalidate signature by having it expired
        
        bytes32 constructedHash = keccak256(
                abi.encodePacked(
                    '\x19Ethereum Signed Message:\n32',
                    keccak256(
                        abi.encodePacked(
                            _tokens,
                            _migratorContract,
                            _signatureExpiry,
                            address(this),
                            block.chainid
                        )
                    )
                )
            );

        // verify that the migrator’s address is signed in the authorization signature by the correct signer (zircuitSigner)
        if (!SignatureChecker.isValidSignatureNow(zircuitSigner, constructedHash, _authorizationSignatureFromZircuit)){
            revert SignatureInvalid();
        }
        
        //effects for-loop (state changes)
        for(uint256 i; i < _tokens.length; ){
            balance[_tokens[i]][msg.sender] = 0;
            unchecked{++i;}
        }

        emit Migrate (eventId, msg.sender, _tokens, _destination, _migratorContract, _amounts);
        ++eventId;

        //interactions for-loop (external calls)
        for(uint256 i; i < _tokens.length; ){
            IERC20(_tokens[i]).approve(_migratorContract, _amounts[i]);
            unchecked{++i;}
        }
       
        IMigrator(_migratorContract).migrate(msg.sender, _tokens, _destination, _amounts);
    }



    /*//////////////////////////////////////////////////////////////
                            Admin Functions
    //////////////////////////////////////////////////////////////*/

    function setZircuitSigner(address _signer) external onlyOwner {
        if (_signer == address(0)) revert SignerCannotBeZeroAddress();
        if (_signer == zircuitSigner) revert SignerAlreadySetToAddress();

        zircuitSigner = _signer;
        emit SignerChanged(_signer);
    }

 
    function setStakable(address _token, bool _canStake) external onlyOwner {
        if (_token == address(0)) revert TokenCannotBeZeroAddress();
        if (tokenAllowlist[_token] == _canStake) revert TokenAlreadyConfiguredWithState();

        tokenAllowlist[_token] = _canStake;
        emit TokenStakabilityChanged(_token, _canStake);
    }

    function pause() external onlyOwner whenNotPaused {
        _pause();
    }

    function unpause() external onlyOwner whenPaused{
        _unpause();
    }

    
}
