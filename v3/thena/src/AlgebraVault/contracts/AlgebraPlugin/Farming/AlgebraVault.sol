// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import '@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol';
import "../../interfaces/Voter/IVoter.sol";
import "./interfaces/IAlgebraVault.sol";

interface IAlgebraVaultFactoryExtra {
    function getTheNFTInfo() external view returns (uint32 theNftShare, address theNftFeeReceiver);
}

/// @title Algebra Vault
/// @notice This contract manages fee collection and distribution for Algebra pools
/// @dev Implements access control for fee management and distribution
contract AlgebraVault is IAlgebraVault, AccessControl {

    using SafeERC20 for IERC20;

    /// @inheritdoc IAlgebraVault
    bytes32 public constant FEE_VAULT_MANAGER_ROLE = keccak256("FEE_VAULT_MANAGER_ROLE");
    
    /// @notice TheNFT fee share percentage with 6 decimals precision
    uint32 public theNftShare;
    /// @notice TheNFT fee receiver contract address
    address public theNftFeeReceiver;
    /// @inheritdoc IAlgebraVault
    address public immutable factory;
    /// @inheritdoc IAlgebraVault
    address public immutable pool;
    /// @inheritdoc IAlgebraVault
    address public immutable voter;
    /// @notice The first token of the pool pair
    IERC20 private token0;
    /// @notice The second token of the pool pair
    IERC20 private token1;
   
    
    /// @notice Constructs the AlgebraVault contract
    /// @param _pool The address of the associated Algebra pool
    /// @param _voter The address of the voter contract
    constructor(address _pool, address _voter, address _factory) {
        if(_pool == address(0)) revert ZeroAddress();
        if(_voter == address(0)) revert ZeroAddress();
        if(_factory == address(0)) revert ZeroAddress();

        pool = _pool;
        token0 = IERC20(IAlgebraPool(_pool).token0());
        token1 = IERC20(IAlgebraPool(_pool).token1());

        voter = _voter;
        factory = _factory;


        (theNftShare, theNftFeeReceiver) = IAlgebraVaultFactoryExtra(factory).getTheNFTInfo();
        if(theNftFeeReceiver == address(0)) revert ZeroAddress();

        _grantRole(FEE_VAULT_MANAGER_ROLE, _factory);
    }





    /// @inheritdoc IAlgebraVault
    function updateTheNFTInfo() external onlyRole(FEE_VAULT_MANAGER_ROLE) {
        (theNftShare, theNftFeeReceiver) = IAlgebraVaultFactoryExtra(factory).getTheNFTInfo();
        emit UpdateTheNFTInfo();
    }


    /// @inheritdoc IAlgebraVault
    function withdraw(address to, address[] calldata token, uint256[] calldata amount) external onlyRole(FEE_VAULT_MANAGER_ROLE) {
        for(uint i = 0; i < token.length; i++){
            if( IERC20(token[i]).balanceOf(address(this)) < amount[i]) revert WithdrawAmountTooBig();
            IERC20(token[i]).safeTransfer(to, amount[i]);
        }
    }



    /// @inheritdoc IAlgebraVault
    function claimFees() external returns(uint256 _claimed0, uint256 _claimed1) {
        
        if(msg.sender != IVoter(voter).gaugeForPool(pool)) revert MsgSenderNotGauge();

        uint256 _balance0 = token0.balanceOf(address(this));
        uint256 _balance1 = token1.balanceOf(address(this));

        uint256 _thenftamount0;
        uint256 _thenftamount1;

        if(theNftShare > 0 && theNftFeeReceiver != address(0)) {
            _thenftamount0 = theNftShare * _balance0 / 1e6;  
            _claimed0 = _balance0 - _thenftamount0;
            if(_thenftamount0 > 0)  token0.safeTransfer(theNftFeeReceiver, _thenftamount0);

            _thenftamount1 = theNftShare * _balance1 / 1e6;  
            _claimed1 = _balance1 - _thenftamount1;
            if(_thenftamount1 > 0) token1.safeTransfer(theNftFeeReceiver, _thenftamount1);
        }

        if(_claimed0 > 0) token0.safeTransfer(msg.sender, _claimed0);
        if(_claimed1 > 0) token1.safeTransfer(msg.sender, _claimed1);   

        emit FeesDistributed(msg.sender, _claimed0, _claimed1, _thenftamount0, _thenftamount1);
    }





}