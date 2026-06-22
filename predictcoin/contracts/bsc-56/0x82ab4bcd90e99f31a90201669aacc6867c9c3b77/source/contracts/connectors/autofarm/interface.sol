interface IAutoFarm {
    function deposit(uint256 _pid, uint256 _wantAmount) external;

    //harvest function for autofarm
    function withdraw(uint256 _pid, uint256 _wantAmount) external;

    //withdraw from autofarm
    function withdrawAll(uint256 _pid) external;

    //get pending auto token
    function pendingAUTO(uint256 _pid, address _user)
        external
        view
        returns (uint256);

    //get lp token balance
    function stakedWantTokens(uint256 poolId, address add)
        external
        view
        returns (uint256 amount);
}