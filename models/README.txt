## Model Files

### Exploratory Work

- **`in progress.tex`** and **`in progress(2).tex`**: 
  - Early explorations of pricing under uncertainty about rival firms' costs
  - Investigates how mean-preserving spreads in cost distributions affect equilibrium prices
  - Uses logit demand with firm-specific valuations

### Core Models



- Model0: bargaining
demand modeled a la BLP 
Firms differ in terms of discount rates and mortality tables 
Firm send initial offers and in the second stage (revised offers) they bargain 

- Model1: bargaining
 model where the consumer receives different offers and then bargains with only one firm under different assumptions of which firm is chosen to bargain, e.g with the firm with which maximizes surplus or is chosen at random. Costs are independent.  [not finished]
simplifies model 0 by assuming there are no gumbel shocks, and aims to endogeneize the firm from which a revised offer is requested


- Model3: firm pricing and mortality tables identification
- Shows that industry pricing formula is suboptimal
- Firms use internal rate of return (IRR) approach: set price so expected profits = 0 at firm-wide target rate
- Optimal pricing should account for price elasticity,  information from rival bids and selection. 
- Develops identification strategy for mortality tables and financing costs from observed offers
- Long version includes detailed proofs on selection effects


- Model4: selection into the market and across firms. 
- **Key insight**: a simple nested logit generates selection into annuities market but NOT across firms
- Nested logit: outer nest (annuity vs. outside option), inner nest (which insurer)
- Health status (private info) affects nest choice but not firm choice
- Shows marginal cost < average cost (marginal buyers healthier)
- Shows marginal costs differ across firms despite same average costs
- Long version includes simulations on information provision effects

- Model5: learning 









- **`in progress.tex`** and **`in progress(2).tex`**: 
  - Early explorations of pricing under uncertainty about rival firms' costs
  - Investigates how mean-preserving spreads in cost distributions affect equilibrium prices
  - Uses logit demand with firm-specific valuations

### Core Models



#### **Model 2: `model2.tex` and `model2_v2.tex`**
**Varian-Style Search with Initial Offers**
- Extension of Varian (1980) shoppers/non-shoppers model
- Firms make initial offers, then consumers can search/request external offers
- Version 2 explores asymmetric costs across firms
- Analyzes conditions under which Diamond paradox is avoided

#### **Model 2 Alternative: `model2_v2.tex`**
**Sequential Search with Bargaining**
- Reservation utility framework where consumers search until finding acceptable offer
- Bargaining determines final prices given outside options
- Health status (private information) affects both search and bargaining
- Shows how to endogenize first-stage offers in this framework
 
 


#### **Model 5: `model5_learning.tex`, `model5_v2.tex`, `model5_v3.tex`**
**Two-Stage Game with Learning**
- Rationalizes why external offers are higher than initial offers
- Firms have private costs (interest rates, commissions)
- Stage 1: Initial offers under uncertainty about rivals
- Stage 2: Firm chosen for external offer observes rivals' bids and can update
- v2 adds equilibrium definition
- v3 adds detailed simulation algorithm for symmetric equilibrium

### Supplementary Models

#### **`model_temp.tex`**
**Insurance with Preconditions - Risk Rating Debate**
- Simple model addressing whether risk rating (price discrimination) helps or hurts welfare
- Shows insurance valuable before risk realized, less so after
- Community rating creates cross-subsidies but distorts prices
- Argues for risk rating + ex-ante transfers over information suppression

## Model Relationships

```
model0 (base framework)
├── model1 (search & bargaining microfoundations)
├── model2/model2_v2 (alternative search frameworks)
├── model3 (optimal pricing & identification)
│   └── Uses framework from model0
├── model4 (selection patterns)
│   └── Can be nested within model0 demand
└── model5 (two-stage pricing dynamics)
    └── Builds on model1 concepts
```

## Key Research Questions Addressed

1. **Why don't firms price optimally?** (Model 3)
2. **What determines who searches for external offers?** (Models 1, 2, 5)
3. **Is there adverse selection across firms?** (Model 4)
4. **Why are external offers better than initial offers?** (Model 5)
5. **Can we identify firm beliefs and costs from prices?** (Model 3)

## Notes

- Models use LaTeX with BibLaTeX for references
- Several models include simulation sections (Models 4, 5)
- Some models have multiple versions reflecting iterative development
- The "_long" versions contain extended proofs and additional technical details
-  demand model with individualized pricing based on consumer characteristics
- Models supply side with firm beliefs about mortality and financing costs
- Includes aftermarket with bargaining between consumers and insurers
- Sets up estimation strategy for demand parameters

#### **Model 1: `model1.tex`**
**Search and Bargaining with External Offers**
- Single buyer, N differentiated sellers with heterogeneous costs
- Two-stage structure: initial posted prices, then optional bargaining
- Explores why consumers would bargain with specific firms
- Shows equilibrium where only top-2 firms by surplus potential get business
- Fixed bargaining cost determines search decision

#### **Model 2: `model2.tex` and `model2_v2.tex`**
**Varian-Style Search with Initial Offers**
- Extension of Varian (1980) shoppers/non-shoppers model
- Firms make initial offers, then consumers can search/request external offers
- Version 2 explores asymmetric costs across firms
- Analyzes conditions under which Diamond paradox is avoided

#### **Model 2 Alternative: `model2_v2.tex`**
**Sequential Search with Bargaining**
- Reservation utility framework where consumers search until finding acceptable offer
- Bargaining determines final prices given outside options
- Health status (private information) affects both search and bargaining
- Shows how to endogenize first-stage offers in this framework

#### **Model 3: `model3.tex` and `model3_long.tex`**
**Optimal vs. Actual Firm Pricing**
- **Main contribution**: Shows that industry pricing formula is suboptimal
- Firms use internal rate of return (IRR) approach: set price so expected profits = 0 at firm-wide target rate
- Optimal pricing should account for price elasticity and information from rival bids
- Develops identification strategy for mortality tables and financing costs from observed offers
- Long version includes detailed proofs on selection effects

#### **Model 4: `model4.tex` and `model4_long.tex`**
**Asymmetric Competition with Selection**
- **Key insight**: Selection into annuities market but NOT across firms
- Nested logit: outer nest (annuity vs. outside option), inner nest (which insurer)
- Health status (private info) affects nest choice but not firm choice
- Shows marginal cost < average cost (marginal buyers healthier)
- Shows marginal costs differ across firms despite same average costs
- Long version includes simulations on information provision effects

#### **Model 5: `model5_learning.tex`, `model5_v2.tex`, `model5_v3.tex`**
**Two-Stage Game with Learning**
- Rationalizes why external offers are higher than initial offers
- Firms have private costs (interest rates, commissions)
- Stage 1: Initial offers under uncertainty about rivals
- Stage 2: Firm chosen for external offer observes rivals' bids and can update
- v2 adds equilibrium definition
- v3 adds detailed simulation algorithm for symmetric equilibrium

### Supplementary Models

#### **`model_temp.tex`**
**Insurance with Preconditions - Risk Rating Debate**
- Simple model addressing whether risk rating (price discrimination) helps or hurts welfare
- Shows insurance valuable before risk realized, less so after
- Community rating creates cross-subsidies but distorts prices
- Argues for risk rating + ex-ante transfers over information suppression

## Model Relationships

```
model0 (base framework)
├── model1 (search & bargaining microfoundations)
├── model2/model2_v2 (alternative search frameworks)
├── model3 (optimal pricing & identification)
│   └── Uses framework from model0
├── model4 (selection patterns)
│   └── Can be nested within model0 demand
└── model5 (two-stage pricing dynamics)
    └── Builds on model1 concepts
```


## Notes

- The "_long" versions contain extended proofs and additional technical details