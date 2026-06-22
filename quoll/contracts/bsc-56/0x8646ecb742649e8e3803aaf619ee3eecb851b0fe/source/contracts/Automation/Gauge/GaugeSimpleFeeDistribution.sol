// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


interface IGauge {
    function periodFinish(address _token) external view returns (uint256);
    function notifyRewardAmount(address _token, uint _amount) external ;   
}

interface IFeeVault {
    function claimFees() external returns(uint256 gauge0, uint256 gauge1);
}


contract GaugeSimpleFeeDistribution is Ownable {

    using SafeERC20 for IERC20;

    address public feeVault;
    address public gauge;
    address[] public tokens;

    mapping(address => bool) public isToken;


    constructor() {
        feeVault = address(0xBF5359Bb45E6a199FB74Ed4548bDA830289Bd095);
        gauge = address(0xe6519bab9DBd868Df05584C898Ef3c60fABC3b0C);

        tokens.push(0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c);
        tokens.push(0xF4C8E32EaDEC4BFe97E0F595AdD0f4450a863a11);
        isToken[0xF4C8E32EaDEC4BFe97E0F595AdD0f4450a863a11] = true;
        isToken[0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c] = true;

    }


    
    /// @notice check if automation can be called
    function check() external view returns (bool canExec, bytes memory execPayload){
        return (_check(), "");
    }
    
    /// @notice internal checks if automation can run
    function _check() internal view returns(bool) {
        address _token;
        uint timestamp;
        bool flag = false;
        for(uint i = 0; i < tokens.length; i++){
            _token = tokens[i];
            if(isToken[_token]){
                timestamp = IGauge(gauge).periodFinish(_token);
                flag = block.timestamp > timestamp ? true : false;
                if(flag == false) return false;
            } 
        }
        return flag;
    }

    function run() external {
        uint256 _amount;

        IFeeVault(feeVault).claimFees();

        for(uint i = 0; i < tokens.length; i++){
            address _token = tokens[i];
            uint256 timestamp = IGauge(gauge).periodFinish(_token);

            if(block.timestamp > timestamp){
                _amount = IERC20(_token).balanceOf(address(this));
                if(_amount > 0){
                    IERC20(_token).safeApprove(gauge, 0);
                    IERC20(_token).safeApprove(gauge, _amount);
                    IGauge(gauge).notifyRewardAmount(_token, _amount);
                }
            }
        }
    }


    function notifyRewardAmount(address _token, uint256 _amount) external onlyOwner {
        IERC20(_token).safeApprove(gauge, 0);
        IERC20(_token).safeApprove(gauge, _amount);
        IGauge(gauge).notifyRewardAmount(_token, _amount);
    }





     /// @notice Recover ERC20 from the contract.
    function recoverERC20(address _tokenAddress, uint256 _tokenAmount) external onlyOwner {
        require(_tokenAmount <= IERC20(_tokenAddress).balanceOf(address(this)));
        IERC20(_tokenAddress).safeTransfer(msg.sender, _tokenAmount);
    }

}