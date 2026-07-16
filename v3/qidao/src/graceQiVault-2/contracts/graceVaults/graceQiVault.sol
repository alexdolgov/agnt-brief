// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./graceVault.sol";

/// @title Fixed Interest Vault
/// @notice Single collateral lending manager with fixed rate interest.
contract graceQiVault is graceVault, Ownable, IERC721Receiver {
    /// @dev Used to restrain the fee. Can only be up to 5% of the amount.
    uint256 constant FEE_MAX = 500;

    string private oracleType;

    constructor(
        address ethPriceSourceAddress,
        uint256 minimumCollateralPercentage,
        string memory name,
        string memory symbol,
        address _mai,
        address _collateral,
        string memory baseURI
    ) graceVault(ethPriceSourceAddress, minimumCollateralPercentage, name, symbol, _mai, _collateral, baseURI) {
        createVault();
        manageFrontEnd(0, 0, true);
        setGracePeriod(24 hours);
    }

    event UpdatedParams(uint256 newMinDebt, uint256 newMaxDebt, address newEthPriceSource);

    event UpdatedFees(uint256 _adminFee, uint256 _refFee);

    event UpdatedMinCollateralRatio(uint256 newMinCollateralRatio);
    event UpdatedStabilityPool(address pool);
    event UpdatedInterestRate(uint256 interestRate);
    event BurnedToken(uint256 amount);

    event UpdatedAdmin(address newAdmin);
    event UpdatedRef(address newRef);

    event UpdatedRouter(address router);


    modifier onlyOperators() {
        require(ref == msg.sender || adm == msg.sender || owner() == msg.sender, "Needs to be called by operators");
        _;
    }

    modifier onlyAdmin() {
        require(adm == msg.sender, "Needs to be called by admin");
        _;
    }

    // @param _oracle name of the oracle used by the contract
    // @notice sets the oracle name used by the contract. for visual purposes.
    function updateOracleName(string memory _oracle) external onlyOwner {
        oracleType = _oracle;
    }

    /// @param _pool is the address that can execute liquidations
    /// @notice sets the address used as stability pool for liquidations
    /// @dev if not set to address(0) then _pool is the only address able to liquidate
    function setStabilityPool(address _pool) external onlyOwner {
        require(_pool != address(0), "StabilityPool cannot be zero address");
        stabilityPool = _pool;
        emit UpdatedStabilityPool(stabilityPool);
    }

    /// @param _admin is the ratio earned by the address that maintains the market
    /// @param _ref is the ratio earned by the address that provides the borrowable asset
    /// @notice sets the interest rate split between the admin and ref
    /// @dev if not set to address(0) then _pool is the only address able to liquidate
    function setFees(uint256 _admin, uint256 _ref) external onlyOwner {
        require((_admin + _ref) == TEN_THOUSAND, "setFees: must equal 10000.");
        adminFee = _admin;
        refFee = _ref;
        emit UpdatedFees(adminFee, refFee);
    }

    /// @param minimumCollateralPercentage is the CDR that limits the amount borrowed
    /// @notice sets the CDR
    /// @dev only callable by owner of the contract
    function setMinCollateralRatio(uint256 minimumCollateralPercentage) external onlyOwner {
        _minimumCollateralPercentage = minimumCollateralPercentage;
        emit UpdatedMinCollateralRatio(_minimumCollateralPercentage);
    }

    function setParams(uint256 _minDebt, uint256 _maxDebt, address _ethPriceSource) external onlyOwner {
        require(_minDebt > 0 && _maxDebt > _minDebt && _ethPriceSource != address(0), "Invalid parameters");
        minDebt = _minDebt;
        maxDebt = _maxDebt;
        ethPriceSource = IPriceSource(_ethPriceSource);
        emit UpdatedParams(_minDebt, _maxDebt, _ethPriceSource);
    }


    /// @param _ref is the address that provides the borrowable asset
    /// @notice sets the address that earns interest for providing a borrowable asset
    /// @dev cannot be address(0)
    function setRef(address _ref) external onlyOwner {
        require(_ref != address(0), "Reference Address cannot be zero");
        ref = _ref;
        emit UpdatedRef(ref);
    }

    /// @param _adm is the ratio earned by the address that maintains the market
    /// @notice sets the address that earns interest for maintaining the market
    /// @dev cannot be address(0)
    function setAdmin(address _adm) external onlyOwner {
        require(_adm != address(0), "Admin Address cannot be zero");
        adm = _adm;
        emit UpdatedAdmin(adm);
    }

    function manageFrontEnd(uint256 _promoter, uint256 cashback, bool isAdd) public {
        require(isAdd ? msg.sender == owner() : msg.sender == ownerOf(_promoter), "Unauthorized");
        require(_exists(_promoter), "Vault does not exist");
        promoter[_promoter] = isAdd ? (cashback > 0 && cashback <= TEN_THOUSAND ? cashback : TEN_THOUSAND) : 0;
    }

    function setGracePeriod(uint256 _gracePeriod) public onlyAdmin {
        gracePeriod = _gracePeriod;
    }

    // @notice withdraws earned interest by vault.
    function withdrawInterest() external onlyOperators nonReentrant {
        uint256 adm_fee = (maiDebt * adminFee) / TEN_THOUSAND;

        // Transfer
        mai.transfer(ref, (maiDebt - adm_fee)); // cheaper and equivalent.
        mai.transfer(adm, adm_fee);
        maiDebt = 0;
    }

    /// @param _iR is the fixed interest charged by a vault
    /// @notice sets the interest charged by a vault.
    function setInterestRate(uint256 _iR) external onlyOwner {
        iR = _iR;
        emit UpdatedInterestRate(iR);
    }

    /// @param amountToken is the amount of borrowable asset that is removed from the debt ceiling.
    /// @notice removes debt ceiling from the vault.
    /// @dev returns the asset to the owner so it can be redeployed at a later time.
    function burn(uint256 amountToken) external onlyAdmin {
        // Burn
        require(amountToken <= mai.balanceOf(address(this)), "burn: Balance not enough");
        mai.transfer(ref, amountToken);
        emit BurnedToken(amountToken);
    }

    /// @param _baseURI is the url for the nft metadata
    /// @notice updates the metadata
    /// @dev it currently uses an ipfs json
    function setTokenURI(string calldata _baseURI) external onlyOwner {
        baseURI = _baseURI;
    }

    function setRouter(address _router) external onlyOwner {
        router = _router;
        emit UpdatedRouter(router);
    }

    function setCustomURI(bool _custom) external onlyOwner {
        custom = _custom;
    }

    // VOTING RELATED

    /**
     * @notice Sets the global voting parameters for the vault.
     * @dev Attempts a test vote with vault ID 0 to ensure the parameters are valid before setting them.
     * @param _lpTokens An array of liquidity pool token addresses for voting.
     * @param _percentages An array of percentages corresponding to the voting power for each LP token.
     * The percentages should sum up to 100.
     * @dev The function can only be called by the owner of the contract.
     * @dev The lengths of the `_lpTokens` and `_percentages` arrays must match.
     * @dev The `_lpTokens` array cannot be empty.
     * @dev The sum of `_percentages` must equal 100.
     * @custom:modifier onlyOwner Restricts the function to the contract owner.
     */
    function setGlobalVotingParams(address[] calldata _lpTokens, uint256[] calldata _percentages) external onlyOwner {
        _setGlobalParams(_lpTokens, _percentages); // Call the internal function from the other contract
    }

    function onERC721Received(address, address, uint256, bytes calldata) external pure override returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

    /**
     * @notice Sets the voting contract address.
     * @param _voting The address of the voting contract.
     * @dev The function can only be called by the owner of the contract.
     * @custom:modifier onlyOwner Restricts the function to the contract owner.
     */
    function setVotingContract(address _voting) external onlyOwner {
        voting = _voting;
    }
}
