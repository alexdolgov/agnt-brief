// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../Dependencies/BaseMath.sol";
import "../Dependencies/SafeMath.sol";
import "../Dependencies/Ownable.sol";
import "../Dependencies/CheckContract.sol";
import "../Dependencies/console.sol";
import "../Interfaces/ILOANToken.sol";
import "../Interfaces/ILOANStaking.sol";
import "../Dependencies/LiquidLoansMath.sol";
import "../Interfaces/IUSDLToken.sol";

contract LOANStaking is ILOANStaking, Ownable, CheckContract, BaseMath {
    using SafeMath for uint;

    // --- Data ---
    string constant public NAME = "LOANStaking";

    mapping( address => uint) public stakes;
    uint public totalLOANStaked;

    uint public F_ETH;  // Running sum of ETH fees per-LOAN-staked
    uint public F_USDL; // Running sum of LOAN fees per-LOAN-staked

    // User snapshots of F_ETH and F_USDL, taken at the point at which their latest deposit was made
    mapping (address => Snapshot) public snapshots; 

    struct Snapshot {
        uint F_ETH_Snapshot;
        uint F_USDL_Snapshot;
    }
    
    ILOANToken public loanToken;
    IUSDLToken public usdlToken;

    address public vaultManagerAddress;
    address public borrowerOperationsAddress;
    address public activePoolAddress;

    // --- Events ---

    event LOANTokenAddressSet(address _loanTokenAddress);
    event USDLTokenAddressSet(address _usdlTokenAddress);
    event VaultManagerAddressSet(address _vaultManager);
    event BorrowerOperationsAddressSet(address _borrowerOperationsAddress);
    event ActivePoolAddressSet(address _activePoolAddress);

    event StakeChanged(address indexed staker, uint newStake);
    event StakingGainsWithdrawn(address indexed staker, uint USDLGain, uint ETHGain);
    event F_ETHUpdated(uint _F_ETH);
    event F_USDLUpdated(uint _F_USDL);
    event TotalLOANStakedUpdated(uint _totalLOANStaked);
    event PulseSent(address _account, uint _amount);
    event StakerSnapshotsUpdated(address _staker, uint _F_ETH, uint _F_USDL);

    // --- Functions ---

    function setAddresses
    (
        address _loanTokenAddress,
        address _usdlTokenAddress,
        address _vaultManagerAddress, 
        address _borrowerOperationsAddress,
        address _activePoolAddress
    ) 
        external 
        onlyOwner 
        override 
    {
        checkContract(_loanTokenAddress);
        checkContract(_usdlTokenAddress);
        checkContract(_vaultManagerAddress);
        checkContract(_borrowerOperationsAddress);
        checkContract(_activePoolAddress);

        loanToken = ILOANToken(_loanTokenAddress);
        usdlToken = IUSDLToken(_usdlTokenAddress);
        vaultManagerAddress = _vaultManagerAddress;
        borrowerOperationsAddress = _borrowerOperationsAddress;
        activePoolAddress = _activePoolAddress;

        emit LOANTokenAddressSet(_loanTokenAddress);
        emit LOANTokenAddressSet(_usdlTokenAddress);
        emit VaultManagerAddressSet(_vaultManagerAddress);
        emit BorrowerOperationsAddressSet(_borrowerOperationsAddress);
        emit ActivePoolAddressSet(_activePoolAddress);

        _renounceOwnership();
    }

    // If caller has a pre-existing stake, send any accumulated ETH and USDL gains to them. 
    function stake(uint _LOANamount) external override {
        _requireNonZeroAmount(_LOANamount);

        uint currentStake = stakes[msg.sender];

        uint ETHGain;
        uint USDLGain;
        // Grab any accumulated ETH and USDL gains from the current stake
        if (currentStake != 0) {
            ETHGain = _getPendingETHGain(msg.sender);
            USDLGain = _getPendingUSDLGain(msg.sender);
        }
    
       _updateUserSnapshots(msg.sender);

        uint newStake = currentStake.add(_LOANamount);

        // Increase user’s stake and total LOAN staked
        stakes[msg.sender] = newStake;
        totalLOANStaked = totalLOANStaked.add(_LOANamount);
        emit TotalLOANStakedUpdated(totalLOANStaked);

        // Transfer LOAN from caller to this contract
        loanToken.sendToLOANStaking(msg.sender, _LOANamount);

        emit StakeChanged(msg.sender, newStake);
        emit StakingGainsWithdrawn(msg.sender, USDLGain, ETHGain);

         // Send accumulated USDL and ETH gains to the caller
        if (currentStake != 0) {
            usdlToken.transfer(msg.sender, USDLGain);
            _sendETHGainToUser(ETHGain);
        }
    }

    // Unstake the LOAN and send the it back to the caller, along with their accumulated USDL & ETH gains. 
    // If requested amount > stake, send their entire stake.
    function unstake(uint _LOANamount) external override {
        uint currentStake = stakes[msg.sender];
        _requireUserHasStake(currentStake);

        // Grab any accumulated ETH and USDL gains from the current stake
        uint ETHGain = _getPendingETHGain(msg.sender);
        uint USDLGain = _getPendingUSDLGain(msg.sender);
        
        _updateUserSnapshots(msg.sender);

        if (_LOANamount > 0) {
            uint LOANToWithdraw = LiquidLoansMath._min(_LOANamount, currentStake);

            uint newStake = currentStake.sub(LOANToWithdraw);

            // Decrease user's stake and total LOAN staked
            stakes[msg.sender] = newStake;
            totalLOANStaked = totalLOANStaked.sub(LOANToWithdraw);
            emit TotalLOANStakedUpdated(totalLOANStaked);

            // Transfer unstaked LOAN to user
            loanToken.transfer(msg.sender, LOANToWithdraw);

            emit StakeChanged(msg.sender, newStake);
        }

        emit StakingGainsWithdrawn(msg.sender, USDLGain, ETHGain);

        // Send accumulated USDL and ETH gains to the caller
        usdlToken.transfer(msg.sender, USDLGain);
        _sendETHGainToUser(ETHGain);
    }

    // --- Reward-per-unit-staked increase functions. Called by LiquidLoans core contracts ---

    function increaseF_ETH(uint _ETHFee) external override {
        _requireCallerIsVaultManager();
        uint ETHFeePerLOANStaked;
     
        if (totalLOANStaked > 0) {ETHFeePerLOANStaked = _ETHFee.mul(DECIMAL_PRECISION).div(totalLOANStaked);}

        F_ETH = F_ETH.add(ETHFeePerLOANStaked); 
        emit F_ETHUpdated(F_ETH);
    }

    function increaseF_USDL(uint _USDLFee) external override {
        _requireCallerIsBorrowerOperations();
        uint USDLFeePerLOANStaked;
        
        if (totalLOANStaked > 0) {USDLFeePerLOANStaked = _USDLFee.mul(DECIMAL_PRECISION).div(totalLOANStaked);}
        
        F_USDL = F_USDL.add(USDLFeePerLOANStaked);
        emit F_USDLUpdated(F_USDL);
    }

    // --- Pending reward functions ---

    function getPendingETHGain(address _user) external view override returns (uint) {
        return _getPendingETHGain(_user);
    }

    function _getPendingETHGain(address _user) internal view returns (uint) {
        uint F_ETH_Snapshot = snapshots[_user].F_ETH_Snapshot;
        uint ETHGain = stakes[_user].mul(F_ETH.sub(F_ETH_Snapshot)).div(DECIMAL_PRECISION);
        return ETHGain;
    }

    function getPendingUSDLGain(address _user) external view override returns (uint) {
        return _getPendingUSDLGain(_user);
    }

    function _getPendingUSDLGain(address _user) internal view returns (uint) {
        uint F_USDL_Snapshot = snapshots[_user].F_USDL_Snapshot;
        uint USDLGain = stakes[_user].mul(F_USDL.sub(F_USDL_Snapshot)).div(DECIMAL_PRECISION);
        return USDLGain;
    }

    // --- Internal helper functions ---

    function _updateUserSnapshots(address _user) internal {
        snapshots[_user].F_ETH_Snapshot = F_ETH;
        snapshots[_user].F_USDL_Snapshot = F_USDL;
        emit StakerSnapshotsUpdated(_user, F_ETH, F_USDL);
    }

    function _sendETHGainToUser(uint ETHGain) internal {
        emit PulseSent(msg.sender, ETHGain);
        (bool success, ) = msg.sender.call{value: ETHGain}("");
        require(success, "LOANStaking: Failed to send accumulated ETHGain");
    }

    // --- 'require' functions ---

    function _requireCallerIsVaultManager() internal view {
        require(msg.sender == vaultManagerAddress, "LOANStaking: caller is not VaultM");
    }

    function _requireCallerIsBorrowerOperations() internal view {
        require(msg.sender == borrowerOperationsAddress, "LOANStaking: caller is not BorrowerOps");
    }

     function _requireCallerIsActivePool() internal view {
        require(msg.sender == activePoolAddress, "LOANStaking: caller is not ActivePool");
    }

    function _requireUserHasStake(uint currentStake) internal pure {  
        require(currentStake > 0, 'LOANStaking: User must have a non-zero stake');  
    }

    function _requireNonZeroAmount(uint _amount) internal pure {
        require(_amount > 0, 'LOANStaking: Amount must be non-zero');
    }

    receive() external payable {
        _requireCallerIsActivePool();
    }
}
// 2025 Liquid Loans