import { TestBed } from "@angular/core/testing";
import { AuthService } from "../services/auth.service";
import { AuthInterceptor } from "./auth.interceptor";

describe('AuthInterceptor', () => {
  let service: AuthService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(AuthService);
  });

  it('should create an instance', () => {
    expect(new AuthInterceptor(service)).toBeTruthy();
  });
});
