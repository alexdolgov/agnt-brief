// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import '../interfaces/Pairs/IPairInfo.sol';

contract FeeVaultSimple is Ownable {

    using SafeERC20 for IERC20;
    
    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    DATA
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */
    struct FeeData {
        uint256 amount0;
        uint256 amount1;
    }

    address public pool;
    address public gauge;

    string public version = "2.0.1";

    mapping(address => bool) public isAllowed;


    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    ERRORS
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */
    error AddressZero();
    error NotAllowed();

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    MODIFIERS
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */
    modifier onlyAllowed() {
        require(isAllowed[msg.sender],'!allowed');
        _;
    }


    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    EVENTS
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */
    event Fees(uint256 totAmount0,uint256 totAmount1, address indexed token0, address indexed token1, address indexed pool, uint timestamp);
    event SetGauge(address indexed oldGauge, address indexed newGauge);
    event SetPool(address indexed oldPool, address indexed newPool);
    event Allow(address indexed caller, bool status);
    event WithdrawERC20(address indexed token, uint256 amount);

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    CONSTRUCTOR AND INIT
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */
    constructor(address _pool, address _gauge) {
        pool = _pool;
        // gauge can be set later using ::setGauge() 
        if(_gauge != address(0)){
            isAllowed[_gauge] = true;
            gauge = _gauge;
        }
        isAllowed[msg.sender] = true;
    }

    

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    LP FEES CLAIM
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    /// @notice Claim Fees from the pool and send to the gauge
    /// @dev Gauge must be set != address(0) else revert
    function claimFees() external returns(uint256 gauge0, uint256 gauge1) {
         
        if(!isAllowed[msg.sender]) revert NotAllowed();
        if(gauge == address(0)) revert AddressZero();

        // token0
        address t0 = IPairInfo(pool).token0();
        gauge0 = IERC20(t0).balanceOf(address(this));

        // token1
        address t1 = IPairInfo(pool).token1();
        gauge1 = IERC20(t1).balanceOf(address(this));
   
        if(gauge0 > 0) IERC20(t0).safeTransfer(gauge, gauge0);
        if(gauge1 > 0) IERC20(t1).safeTransfer(gauge, gauge1);
        
        emit Fees(gauge0, gauge1, t0, t1, pool, block.timestamp);  

    }


    
    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    ADMIN FUNCTIONS
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    /// @notice Set the gauge where to send fees
    function setGauge(address _gauge) external onlyOwner {
        if(gauge == address(0)) revert AddressZero();
        address _oldGauge = gauge;
        gauge = _gauge;
        emit SetGauge(_oldGauge, _gauge);
    }

    /// @notice allow an EOA or Contract to claimFees
    function allow(address caller, bool status) external onlyOwner {
        isAllowed[caller] = status;
        emit Allow(caller, status);
    }

    /// @notice set the underlying pool where to get fees
    function setPool(address _pool) external onlyOwner {
        if(_pool == address(0)) revert AddressZero();
        address _oldPool = pool;
        pool = _pool;
        emit SetPool(_oldPool, _pool);
    }

    /// @notice Recover ERC20 from the contract.
    function recoverERC20(address _tokenAddress, uint256 _tokenAmount) external onlyOwner {
        require(_tokenAmount <= IERC20(_tokenAddress).balanceOf(address(this)));
        IERC20(_tokenAddress).safeTransfer(msg.sender, _tokenAmount);
        emit WithdrawERC20(_tokenAddress, _tokenAmount);
    }

}