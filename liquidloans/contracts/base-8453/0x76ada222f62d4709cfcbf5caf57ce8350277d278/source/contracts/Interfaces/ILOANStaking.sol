// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

interface ILOANStaking {

    // --- Events --
    
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
    )  external;

    function stake(uint _LOANamount) external;

    function unstake(uint _LOANamount) external;

    function increaseF_ETH(uint _ETHFee) external; 

    function increaseF_USDL(uint _LOANFee) external;  

    function getPendingETHGain(address _user) external view returns (uint);

    function getPendingUSDLGain(address _user) external view returns (uint);
}
// 2025 Liquid Loans