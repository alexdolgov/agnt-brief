/// @title ClaimParams - Parameters for claiming rewards
/// @notice Structure containing all necessary information for claiming rewards from a distributor
struct ClaimParams {
    /// @notice The address of the rewards distributor contract
    address distributor;
    /// @notice The account for which to claim rewards
    address account;
    /// @notice The token in which rewards are paid
    address rewardToken;
    /// @notice The amount of rewards claimable
    uint256 claimable;
    /// @notice Merkle proof for validating the claim
    bytes32[] proof;
}
