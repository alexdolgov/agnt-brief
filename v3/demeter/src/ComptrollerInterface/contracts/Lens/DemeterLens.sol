pragma solidity ^0.5.16;
pragma experimental ABIEncoderV2;

import "../VToken.sol";
import "../interfaces/PriceOracle.sol";
import "../interfaces/EIP20Interface.sol";
import "../interfaces/ComptrollerInterface.sol";
import "../Governance/GovernorAlpha.sol";
import "../Governance/DMT.sol";

interface ComptrollerLensInterface {
    function markets(address) external view returns (bool, uint);
    function oracle() external view returns (PriceOracle);
    function getAccountLiquidity(address) external view returns (uint, uint, uint);
    function getAssetsIn(address) external view returns (VToken[] memory);
    function claimDemeter(address) external;
    function demeterAccrued(address) external view returns (uint);
}

contract DemeterLens {
    struct VTokenMetadata {
        address vToken;
        uint exchangeRateCurrent;
        uint supplyRatePerBlock;
        uint borrowRatePerBlock;
        uint reserveFactorMantissa;
        uint totalBorrows;
        uint totalReserves;
        uint totalSupply;
        uint totalCash;
        bool isListed;
        uint collateralFactorMantissa;
        address underlyingAssetAddress;
        uint vTokenDecimals;
        uint underlyingDecimals;
        bool allowBorrow;
        bool crossAsset;
    }

    function vTokenMetadata(VToken vToken) public returns (VTokenMetadata memory) {
        uint exchangeRateCurrent = vToken.exchangeRateCurrent();
        ComptrollerLensInterface comptroller = ComptrollerLensInterface(address(vToken.comptroller()));
        (bool isListed, uint collateralFactorMantissa) = comptroller.markets(address(vToken));
        address underlyingAssetAddress;
        uint underlyingDecimals;

        if (compareStrings(vToken.symbol(), "dmHT")) {
            underlyingAssetAddress = address(0);
            underlyingDecimals = 18;
        } else {
            underlyingAssetAddress = vToken.underlying();
            underlyingDecimals = EIP20Interface(vToken.underlying()).decimals();
        }

        return VTokenMetadata({
            vToken: address(vToken),
            exchangeRateCurrent: exchangeRateCurrent,
            supplyRatePerBlock: vToken.supplyRatePerBlock(),
            borrowRatePerBlock: vToken.borrowRatePerBlock(),
            reserveFactorMantissa: vToken.reserveFactorMantissa(),
            totalBorrows: vToken.totalBorrows(),
            totalReserves: vToken.totalReserves(),
            totalSupply: vToken.totalSupply(),
            totalCash: vToken.getCash(),
            isListed: isListed,
            collateralFactorMantissa: collateralFactorMantissa,
            underlyingAssetAddress: underlyingAssetAddress,
            vTokenDecimals: vToken.decimals(),
            underlyingDecimals: underlyingDecimals,
            allowBorrow: vToken.allowBorrow(),
            crossAsset: vToken.crossAsset()
        });
    }

    function vTokenMetadataAll(VToken[] calldata vTokens) external returns (VTokenMetadata[] memory) {
        uint vTokenCount = vTokens.length;
        VTokenMetadata[] memory res = new VTokenMetadata[](vTokenCount);
        for (uint i = 0; i < vTokenCount; i++) {
            res[i] = vTokenMetadata(vTokens[i]);
        }
        return res;
    }

    function checkMemberships(ComptrollerInterface comptroller, VToken[] calldata vTokens, address payable account) external view returns(bool[] memory) {
        bool[] memory result = new bool[](vTokens.length);
        for (uint i = 0; i < vTokens.length; i++) {
            result[i] = comptroller.checkMembership(account, address(vTokens[i]));
        }

        return result;
    }

    struct VTokenBalances {
        address vToken;
        uint balanceOf;
        uint borrowBalanceCurrent;
        uint balanceOfUnderlying;
        uint tokenBalance;
        uint tokenAllowance;
    }

    function vTokenBalances(VToken vToken, address payable account) public returns (VTokenBalances memory) {
        uint balanceOf = vToken.balanceOf(account);
        uint borrowBalanceCurrent = vToken.borrowBalanceCurrent(account);
        uint balanceOfUnderlying = vToken.balanceOfUnderlying(account);
        uint tokenBalance;
        uint tokenAllowance;

        if (compareStrings(vToken.symbol(), "dmHT")) {
            tokenBalance = account.balance;
            tokenAllowance = account.balance;
        } else {
            EIP20Interface underlying = EIP20Interface(vToken.underlying());
            tokenBalance = underlying.balanceOf(account);
            tokenAllowance = underlying.allowance(account, address(vToken));
        }

        return VTokenBalances({
            vToken: address(vToken),
            balanceOf: balanceOf,
            borrowBalanceCurrent: borrowBalanceCurrent,
            balanceOfUnderlying: balanceOfUnderlying,
            tokenBalance: tokenBalance,
            tokenAllowance: tokenAllowance
        });
    }

    function vTokenBalancesAll(VToken[] calldata vTokens, address payable account) external returns (VTokenBalances[] memory) {
        uint vTokenCount = vTokens.length;
        VTokenBalances[] memory res = new VTokenBalances[](vTokenCount);
        for (uint i = 0; i < vTokenCount; i++) {
            res[i] = vTokenBalances(vTokens[i], account);
        }
        return res;
    }

    struct VTokenUnderlyingPrice {
        address vToken;
        uint underlyingPrice;
    }

    function vTokenUnderlyingPrice(VToken vToken) public view returns (VTokenUnderlyingPrice memory) {
        ComptrollerLensInterface comptroller = ComptrollerLensInterface(address(vToken.comptroller()));
        PriceOracle priceOracle = comptroller.oracle();

        return VTokenUnderlyingPrice({
            vToken: address(vToken),
            underlyingPrice: priceOracle.getUnderlyingPrice(vToken)
        });
    }

    function vTokenUnderlyingPriceAll(VToken[] calldata vTokens) external view returns (VTokenUnderlyingPrice[] memory) {
        uint vTokenCount = vTokens.length;
        VTokenUnderlyingPrice[] memory res = new VTokenUnderlyingPrice[](vTokenCount);
        for (uint i = 0; i < vTokenCount; i++) {
            res[i] = vTokenUnderlyingPrice(vTokens[i]);
        }
        return res;
    }

    struct AccountLimits {
        VToken[] markets;
        uint liquidity;
        uint shortfall;
    }

    function getAccountLimits(ComptrollerLensInterface comptroller, address account) public view returns (AccountLimits memory) {
        (uint errorCode, uint liquidity, uint shortfall) = comptroller.getAccountLiquidity(account);
        require(errorCode == 0, "account liquidity error");

        return AccountLimits({
            markets: comptroller.getAssetsIn(account),
            liquidity: liquidity,
            shortfall: shortfall
        });
    }

    function getAccountsShortfall(ComptrollerLensInterface comptroller, address[] memory accounts) public view returns(uint[] memory) {
        uint[] memory shortfalls = new uint[](accounts.length);
        for (uint i = 0; i < accounts.length; i++) {
            (,, uint shortfall) = comptroller.getAccountLiquidity(accounts[i]);
            shortfalls[i] = shortfall;
        }

        return shortfalls;
    }

    struct GovReceipt {
        uint proposalId;
        bool hasVoted;
        bool support;
        uint96 votes;
    }

    function getGovReceipts(GovernorAlpha governor, address voter, uint[] memory proposalIds) public view returns (GovReceipt[] memory) {
        uint proposalCount = proposalIds.length;
        GovReceipt[] memory res = new GovReceipt[](proposalCount);
        for (uint i = 0; i < proposalCount; i++) {
            GovernorAlpha.Receipt memory receipt = governor.getReceipt(proposalIds[i], voter);
            res[i] = GovReceipt({
                proposalId: proposalIds[i],
                hasVoted: receipt.hasVoted,
                support: receipt.support,
                votes: receipt.votes
            });
        }
        return res;
    }

    struct GovProposal {
        uint proposalId;
        address proposer;
        uint eta;
        address[] targets;
        uint[] values;
        string[] signatures;
        bytes[] calldatas;
        uint startBlock;
        uint endBlock;
        uint forVotes;
        uint againstVotes;
        bool canceled;
        bool executed;
    }

    function setProposal(GovProposal memory res, GovernorAlpha governor, uint proposalId) internal view {
        (
            ,
            address proposer,
            uint eta,
            uint startBlock,
            uint endBlock,
            uint forVotes,
            uint againstVotes,
            bool canceled,
            bool executed
        ) = governor.proposals(proposalId);
        res.proposalId = proposalId;
        res.proposer = proposer;
        res.eta = eta;
        res.startBlock = startBlock;
        res.endBlock = endBlock;
        res.forVotes = forVotes;
        res.againstVotes = againstVotes;
        res.canceled = canceled;
        res.executed = executed;
    }

    function getGovProposals(GovernorAlpha governor, uint[] calldata proposalIds) external view returns (GovProposal[] memory) {
        GovProposal[] memory res = new GovProposal[](proposalIds.length);
        for (uint i = 0; i < proposalIds.length; i++) {
            (
                address[] memory targets,
                uint[] memory values,
                string[] memory signatures,
                bytes[] memory calldatas
            ) = governor.getActions(proposalIds[i]);
            res[i] = GovProposal({
                proposalId: 0,
                proposer: address(0),
                eta: 0,
                targets: targets,
                values: values,
                signatures: signatures,
                calldatas: calldatas,
                startBlock: 0,
                endBlock: 0,
                forVotes: 0,
                againstVotes: 0,
                canceled: false,
                executed: false
            });
            setProposal(res[i], governor, proposalIds[i]);
        }
        return res;
    }

    struct DMTBalanceMetadata {
        uint balance;
        uint votes;
        address delegate;
    }

    function getDMTBalanceMetadata(DMT dmt, address account) external view returns (DMTBalanceMetadata memory) {
        return DMTBalanceMetadata({
            balance: dmt.balanceOf(account),
            votes: uint256(dmt.getCurrentVotes(account)),
            delegate: dmt.delegates(account)
        });
    }

    struct DMTBalanceMetadataExt {
        uint balance;
        uint votes;
        address delegate;
        uint allocated;
    }

    function getDMTBalanceMetadataExt(DMT dmt, ComptrollerLensInterface comptroller, address account) external returns (DMTBalanceMetadataExt memory) {
        uint balance = dmt.balanceOf(account);
        comptroller.claimDemeter(account);
        uint newBalance = dmt.balanceOf(account);
        uint accrued = comptroller.demeterAccrued(account);
        uint total = add(accrued, newBalance, "sum dmt total");
        uint allocated = sub(total, balance, "sub allocated");

        return DMTBalanceMetadataExt({
            balance: balance,
            votes: uint256(dmt.getCurrentVotes(account)),
            delegate: dmt.delegates(account),
            allocated: allocated
        });
    }

    struct DemeterVotes {
        uint blockNumber;
        uint votes;
    }

    function getDemeterVotes(DMT dmt, address account, uint32[] calldata blockNumbers) external view returns (DemeterVotes[] memory) {
        DemeterVotes[] memory res = new DemeterVotes[](blockNumbers.length);
        for (uint i = 0; i < blockNumbers.length; i++) {
            res[i] = DemeterVotes({
                blockNumber: uint256(blockNumbers[i]),
                votes: uint256(dmt.getPriorVotes(account, blockNumbers[i]))
            });
        }
        return res;
    }

    function compareStrings(string memory a, string memory b) internal pure returns (bool) {
        return (keccak256(abi.encodePacked((a))) == keccak256(abi.encodePacked((b))));
    }

    function add(uint a, uint b, string memory errorMessage) internal pure returns (uint) {
        uint c = a + b;
        require(c >= a, errorMessage);
        return c;
    }

    function sub(uint a, uint b, string memory errorMessage) internal pure returns (uint) {
        require(b <= a, errorMessage);
        uint c = a - b;
        return c;
    }
}
